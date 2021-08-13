import sys
from math import cos, sin, asin, radians
from pcbnew import *
 
ToUnits=ToMM
FromUnits=FromMM
 
def GetAllVias(board):
    """Just retreive all via from the given board"""
    vias = []
    for item in board.GetTracks():
        if type(item) == VIA:
            pos = item.GetPosition()
            width = item.GetWidth()
            drill = item.GetDrillValue()
            vias.append((pos, width, drill))
    return vias
 
def GetAllPads(board, filters=[]):
    """Just retreive all pads from the given board"""
    pads = []
    for i in xrange(board.GetPadCount()):
        pad = board.GetPad(i)
        if pad.GetAttribute() in filters:
            pos = pad.GetPosition()
            drill = pad.GetDrillSize().x + FromUnits(0.2 * 2)
            pads.append((pos, drill ))
    return pads
 
def Zone(workfile, board, points, track):
    """Add a zone to the board"""
    z = ZONE_CONTAINER(board)
 
    #Add zone properties
    z.SetLayer(track.GetLayer())
    z.SetNetCode(track.GetNetCode())
    z.SetZoneClearance(track.GetClearance())
    z.SetMinThickness(25400) #The minimum
    z.SetPadConnection(2) # 2 means solid
    z.SetIsFilled(True)
 
    line=[]
    for p in points:
        z.AppendCorner(p)
        line.append(str(p))
 
    line.sort()
    z.BuildFilledSolidAreasPolygons(board)
 
    #Save zone properties
    workfile.write(track.GetLayerName() + ':' + ''.join(line) + '\n')
 
    return z
 
def Compute4Points(track, via, hpercent, vpercent):
    """Del all teardrops referenced by the teardrop file"""
    start = track.GetStart()
    end = track.GetEnd()
 
    # ensure that start is at the via/pad end
    d = end - via[0]
    if sqrt(d.x * d.x + d.y * d.y) < via[1]:
        start, end = end, start
 
    # get normalized track vector
    pt = end - start
    norm = sqrt(pt.x * pt.x + pt.y * pt.y)
    vec = [t / norm for t in pt]
 
    d = asin(vpercent/100.0);
    vecB = [vec[0]*cos(d)+vec[1]*sin(d) , -vec[0]*sin(d)+vec[1]*cos(d)]
    d = asin(-vpercent/100.0);
    vecC = [vec[0]*cos(d)+vec[1]*sin(d) , -vec[0]*sin(d)+vec[1]*cos(d)]
 
    # find point on the track, sharp end of the teardrop
    dist = via[1]*(1+hpercent/100.0)
    pointA = start + wxPoint(int(vec[0] * dist), int(vec[1] * dist))
 
    # Introduce a last point in order to cover the via centre.
    # If not, the zone won't be filled
    vecD = [-vec[0], -vec[1]]
 
    radius = via[1] / 2
 
    # via side points
    pointB = via[0] + wxPoint(int(vecB[0] * radius), int(vecB[1] * radius))
    pointC = via[0] + wxPoint(int(vecC[0] * radius), int(vecC[1] * radius))
 
    # behind via center
    radius = (via[1]/2)*0.5 #50% of via radius is enough to include
    pointD = via[0] + wxPoint(int(vecD[0] * radius), int(vecD[1] * radius))
 
    return (pointA, pointB, pointD, pointC)
 
def SetTeardrops(hpercent=30, vpercent=70):
    """Set teardrops on a teardrop free board"""
 
    pcb = GetBoard()
    wf = open(pcb.GetFileName() + "_td", 'w')
    vias = GetAllVias(pcb) + GetAllPads(pcb, [PAD_STANDARD])
 
    count = 0
    for track in pcb.GetTracks():
        if type(track) == TRACK:
            for via in vias:
                if track.IsPointOnEnds(via[0], via[1]/2):
                    if track.GetLength() < via[1]:
                            continue
                    coor = Compute4Points(track, via, hpercent, vpercent)
                    pcb.Add(Zone(wf, pcb, coor, track))
                    count = count + 1
    print('{0} teardrops inserted'.format(count))
 
def RmTeardrops():
    """Remove teardrops according to teardrops definition file"""
 
    pcb = GetBoard()
    wf = open(pcb.GetFileName() + "_td", 'r')
 
    to_remove=[]
    for line in wf:
        for z in [ pcb.GetArea(i) for i in range(pcb.GetAreaCount()) ]:
            corners = [str(z.GetCornerPosition(i)) for i in range(z.GetNumCorners())]
            if len(corners) != 4:
                continue
            if z.GetLayerName() != line.split(':')[0]:
                continue
            corners.sort()
            if line.rstrip() == z.GetLayerName() + ':' + ''.join(corners):
                to_remove.append(z)
 
    for tbr in to_remove:
        pcb.Remove(tbr)
    print('{0} teardrops removed'.format(len(to_remove)))