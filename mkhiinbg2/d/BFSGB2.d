BEGIN BFSGB2

IF ~IsGabber(Player1) RandomNum(3,1)~ BFSGob2.1    			
SAY @0 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,2)~ BFSGob2.2  			
SAY @1 
IF ~~ EXIT
END

IF ~IsGabber(Player1) RandomNum(3,3)~ BFSGob2.3  			
SAY @2 
++ @3 + BFSGob2.4
++ @4 + BFSGob2.5
END

IF ~~ BFSGob2.4
SAY @5
IF ~~ EXIT
END

IF ~~ BFSGob2.5
SAY @6
IF ~~ EXIT
END
