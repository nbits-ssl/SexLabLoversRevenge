;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname SSLLoversRevenge_QF_020012C6 Extends Quest Hidden

;BEGIN ALIAS PROPERTY ContractFemale
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ContractFemale Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Assasin
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Assasin Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ContractMale
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ContractMale Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Lover
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Lover Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Ally
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Ally Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
ObjectReference contract

if (Alias_Ally.GetActorRef().GetActorBase().GetSex() == 0)
	contract = Alias_ContractMale.GetRef()
else
	contract = Alias_ContractFemale.GetRef()
endif

contract.Enable()
Alias_Assasin.GetActorRef().AddItem(contract)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
