BEGIN BFSMK25

IF ~Global("BFSKinSummonedTOB","GLOBAL",1)~ BFSMk2.TOBSummon
SAY @0
= @1
++ @2 DO ~SetGlobal("BFSKinSummonedTOB","GLOBAL",2)~ + BFSMk2.TOBSummon1
++ @3 DO ~SetGlobal("BFSKinSummonedTOB","GLOBAL",2)~ + BFSMk2.TOBSummon2
++ @4 DO ~SetGlobal("BFSKinSummonedTOB","GLOBAL",2)~ + BFSMk2.TOBSummon3
END

IF ~~ BFSMk2.TOBSummon1
SAY @5
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BFSMk2.TOBSummon2
SAY @6
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ BFSMk2.TOBSummon3
SAY @7
IF ~~ DO ~MoveToPointNoInterrupt([2551.1333]) Face(0)~ EXIT 
END
