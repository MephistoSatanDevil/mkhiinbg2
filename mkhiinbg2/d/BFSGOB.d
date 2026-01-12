BEGIN BFSGOB

IF ~IsGabber(Player1) RandomNum(3,1)~ BFSGob.1    			
SAY @0 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,2)~ BFSGob.2  			
SAY @1 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,3)~ BFSGob.3  			
SAY @2 
++ @3 + BFSGob.4
++ @4 + BFSGob.5
END

IF ~~ BFSGob.4
SAY @5
IF ~~ EXIT
END

IF ~~ BFSGob.5
SAY @6
IF ~~ EXIT
END
