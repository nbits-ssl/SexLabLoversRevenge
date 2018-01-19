Scriptname SSLLoversRevengeRegister extends Quest  

SexLabFramework Property SexLab Auto
Actor PlayerActor

Event OnInit()
	RegisterForModEvent("HookOrgasmEnd", "SSLLoversRevengeOrgasmEnd")
	PlayerActor = Game.GetPlayer()
EndEvent

Event SSLLoversRevengeOrgasmEnd(int tid, bool hasPlayer)
	if !(hasPlayer)
		return
	endif
	
	sslThreadController controller = SexLab.GetController(tid)
	Actor victim = controller.Positions[0]
	Actor aggr = controller.Positions[1]
	Actor target
	
	if (victim && aggr)
		if (victim == PlayerActor)
			target = aggr
		elseif (aggr == PlayerActor)
			target = victim
		endif
	endif
	
	if (target)
		; debug.notification(target.GetActorBase().GetName())
		Actor AssAct = Assasin.GetActorRef()
		target.AddToFaction(SSLLoversRevengeTargetFaction)
		
		if (SSLLoversRevenge.IsRunning() && AssAct.IsDead())
			SSLLoversRevenge.Stop()
			PlayerActor.RemoveItem(SSLLoversRevengeContractMaleAlly, 1, true)
			PlayerActor.RemoveItem(SSLLoversRevengeContractFemaleAlly, 1, true)
		endif
		if !(SSLLoversRevenge.IsRunning())
			SSLLoversRevenge.Start()
		endif
		
		target.RemoveFromFaction(SSLLoversRevengeTargetFaction)
	endif
EndEvent


Faction Property SSLLoversRevengeTargetFaction  Auto  
Quest Property SSLLoversRevenge  Auto  
ReferenceAlias Property Assasin  Auto  
Book Property SSLLoversRevengeContractFemaleAlly  Auto  
Book Property SSLLoversRevengeContractMaleAlly  Auto  
