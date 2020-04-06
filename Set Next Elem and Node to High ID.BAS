Sub Main
	'=====================================================
	'Set the next ID of elements and nodes to be on the high side of the alread-in-
	'use range. Useful when meshing and you desire to leave some low IDs open (for
	'constraints, etc) but the mesher wants to start at Node 1 and Element 1.
	'
	'Written by AMJ 3.31.2020
	'=====================================================
    Dim App as femap.model
    Set App = feFemap()

    Dim nodeSet As femap.Set
    Set nodeSet = App.feSet

    Dim elemSet As femap.Set
    Set elemSet = App.feSet

    nodeSet.AddAll(FT_NODE)
    elemSet.AddAll(FT_elem)

    Dim nextNodeID As Long
    Dim nextElemID As Long

    nextNodeID = nodeSet.Last + 1
    'MsgBox("The last Node ID is " & nextNodeID,vbOkOnly,"Info")
	nextElemID = elemSet.Last + 1

	App.Info_NextID(FT_NODE) = nextNodeID
	App.Info_NextID(FT_elem) = nextElemID
    
End Sub
