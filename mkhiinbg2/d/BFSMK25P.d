BEGIN BFSMK25P

/* M'Khiin is kicked from the party */ 
IF ~Global("BFSMKKickedOutTOB","GLOBAL",0)~ BFSMk.KickedFromPartyTOB
SAY @0
++ @1 DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + @2 DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1) MoveToPointNoInterrupt([2551.1333]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @2 DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @3 DO ~SetGlobal("BFSMKKickedOutTOB","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2551.1333],0)~ EXIT 
END

/* Rejoin Dialogue */  
IF ~Global("BFSMKKickedOutTOB","GLOBAL",1)~ BFSMk.RejoinPartyTOB
SAY @4
++ @5 + BFSMk.RejoinYesTOB
++ @6 + BFSMk.RejoinNoTOB
END 

IF ~~ BFSMk.RejoinYesTOB
SAY @7
IF ~~ DO ~SetGlobal("BFSMKKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ BFSMk.RejoinNoTOB
SAY @8
IF ~~ EXIT
END
