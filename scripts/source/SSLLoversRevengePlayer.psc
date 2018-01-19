Scriptname SSLLoversRevengePlayer extends ReferenceAlias  

ReferenceAlias Property Assasin  Auto  

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	Actor AssAct = Assasin.GetActorRef()
	if (AssAct.IsDisabled())
		AssAct.Enable()
	endif
EndEvent