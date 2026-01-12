BEGIN BFSMKP

/* Breaking Point Reached Dialogue */ 
IF ~Global("BFSMKLeaves","GLOBAL",0) HappinessLT(Myself,-299)~ BFSMk.BetterOnMyOwn
SAY @0
IF ~~ DO ~AddJournalEntry(@100002, QUEST_DONE) EscapeArea()~ EXIT
END

/* Kicked Out Dialogue */ 
IF ~Global("BFSMKKickedOut","GLOBAL",0)~ BFSMk.KickedFromParty
SAY @1
++ @2 DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ + @3 DO ~SetGlobal("BFSMKKickedOut","GLOBAL",1) MoveGlobal("AR0701","BFSMK",[2776.1537])~ EXIT   
END  

/* Rejoin Dialogue */
IF ~Global("BFSMKKickedOut","GLOBAL",1)~ BFSMk.RejoinParty
SAY @4
++ @5 + BFSMk.RejoinYes
++ @6 + BFSMk.RejoinNo
END 

IF ~~ BFSMk.RejoinYes
SAY @7
IF ~~ DO ~SetGlobal("BFSMKKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ BFSMk.RejoinNo
SAY @8
IF ~~ EXIT
END
