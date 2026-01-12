/* Obligatory Celvan Limerick */ 
CHAIN IF WEIGHT #-1 
~InParty("BFSMK")
See("BFSMK")
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKCelvan","AR0300",0)~ THEN CELVAN BFS.Mk2Celv
@0
DO ~SetGlobal("BFSMKCelvan","AR0300",1)~
== BFSMKJ @1
END CELVAN 1

BEGIN BFSMKJ

// Gobbos Dead
IF ~Global("BFSMkDeadGobbos","GLOBAL",1)~ THEN BEGIN BFSMk2.JoinQuestDone
SAY @2
= @3 
IF ~~ DO ~SetGlobal("BFSMkDeadGobbos","GLOBAL",2)~ EXIT
END

// Tanner
IF ~Global("BFSMkTanner","GLOBAL",1)~ THEN BEGIN BFSMk2.Tanner
SAY @4 
= @5
IF ~~ DO ~SetGlobal("BFSMkTanner","GLOBAL",2)~ EXIT
END

// Freed the Slaves
IF ~Global("BFSMkFreedSlaves","GLOBAL",1)~ THEN BEGIN BFSMk2.FreedSlaves
SAY @6
++ @7 + BFSMk2.SlaveryDifference
++ @8 + BFSMk2.SlaveryUncaring
++ @9 + BFSMk2.SlaveryDisinterest
END

IF ~~ BFSMk2.SlaveryUncaring
SAY @10 
= @11 
IF ~~ + BFSMk2.SlaveryUnderstand
END

IF ~~ BFSMk2.SlaveryDifference
SAY @12  
= @11 
IF ~~ + BFSMk2.SlaveryUnderstand
END

IF ~~ BFSMk2.SlaveryUnderstand
SAY @13 
= @14 
+ ~!Global("BFSMkSoDKnown","GLOBAL",1)~ + @15 + BFSMk2.BaelothNotKnown
+ ~Global("BFSMkSoDKnown","GLOBAL",1)~ + @16 + BFSMk2.BaelothUnderstand
++ @17 + BFSMk2.SlaveryDisinterest
++ @18 + BFSMk2.ThanksForTheTraumaIrenicus
END

IF ~~ BFSMk2.ThanksForTheTraumaIrenicus
SAY @19
= @20
= @21
++ @22 + BFSMk2.TeachUntilTheyLearn
++ @23 + BFSMk2.LeaveThemBe
++ @24 + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.BaelothNotKnown
SAY @25
= @26 
= @27 
= @28 
++ @22 + BFSMk2.TeachUntilTheyLearn
++ @23 + BFSMk2.LeaveThemBe
++ @24 + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.BaelothUnderstand
SAY @29 
= @27 
= @28 
++ @22 + BFSMk2.TeachUntilTheyLearn
++ @23 + BFSMk2.LeaveThemBe
++ @24 + BFSMk2.SurviveAtAllCosts
END

IF ~~ BFSMk2.TeachUntilTheyLearn
SAY @30 
= @31 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2) ActionOverride("BFSMK",ChangeAlignment(Myself,NEUTRAL_GOOD))~ EXIT
END

IF ~~ BFSMk2.SurviveAtAllCosts
SAY @32
= @33
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2) IncrementGlobal("BFSMkEvilCounter","GLOBAL",1)~ EXIT
END

IF ~~ BFSMk2.LeaveThemBe
SAY @34 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2)~ EXIT
END

IF ~~ BFSMk2.SlaveryDisinterest
SAY @35 
IF ~~ DO ~SetGlobal("BFSMkFreedSlaves","GLOBAL",2)~ EXIT
END

// City Gates 
CHAIN IF WEIGHT #-1 ~Global("BFSCityGatesGoblin","GLOBAL",1)~ THEN BFSMKJ BFSMk2.CityGates
@36
DO ~SetGlobal("BFSCityGatesGoblin","GLOBAL",2)~
== AESOLD @37
== BFSMKJ @38 
END
++ @39 EXTERN BFSMKJ BFSMk2.GuardDistracted
++ @40 EXTERN BFSMKJ BFSMk2.GuardBribe
++ @41 EXTERN BFSMKJ BFSMk2.GateKinLeaves

CHAIN BFSMKJ BFSMk2.GuardBribe
@42 
== AESOLD @43 
END
+ ~CheckStatGT(Player1,14,CHR)~ + @44 EXTERN AESOLD BFSMk2.ChaBribeWorked
+ ~!CheckStatGT(Player1,14,CHR)~ + @44 EXTERN AESOLD BFSMk2.BribeNotWork
++ @45 EXTERN AESOLD BFSMk2.GoldBribe
+ ~CheckStatGT(Player1,14,STR)~ + @46 EXTERN AESOLD BFSMk2.StrBribeWorked
+ ~!CheckStatGT(Player1,14,STR)~ + @46 EXTERN AESOLD BFSMk2.BribeNotWork
++ @47 EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldBribe
@48
== AESOLD @49
END
+ ~!PartyGold(500)~ + @50 EXTERN AESOLD BFSMk2.GoldNotEnough
+ ~PartyGold(500)~ + @51 EXTERN AESOLD BFSMk2.GoldNotEnough
+ ~PartyGold(500)~ + @52 EXTERN AESOLD BFSMk2.GoldBribeWorked
++ @47 EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldNotEnough
@53 
== BFSMKJ @54 
END
IF ~~ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.GoldBribeWorked
@55 
DO ~TakePartyGold(500) IncrementGlobal("BFSMk2GoblinInTheCity","GLOBAL",1)~
== AESOLD @56 
EXIT

CHAIN AESOLD BFSMk2.BribeNotWork
@57 
== BFSMKJ @54 
END
IF ~~ EXTERN BFSMKJ BFSMk2.GuardDistracted

CHAIN AESOLD BFSMk2.ChaBribeWorked
@58 
DO ~IncrementGlobal("BFSMk2GoblinInTheCity","GLOBAL",1)~
== AESOLD @56 
EXIT

CHAIN AESOLD BFSMk2.StrBribeWorked
@59 
DO ~IncrementGlobal("BFSMk2GoblinInTheCity","GLOBAL",1)~
== AESOLD @60 
EXIT

CHAIN BFSMKJ BFSMk2.GateKinLeaves
@61 
DO ~AddJournalEntry(@100002, QUEST_DONE) EscapeArea()~ EXIT

CHAIN BFSMKJ BFSMk2.GuardDistracted
@62 
DO ~CreateCreatureObjectEffect("BDBGOBG1","BDSHSUM","BFSMK") Wait(3) ActionOverride("BDBGOBG1",DestroySelf()) DisplayStringHead("BFSMK",@9009) IncrementGlobal("BFSMk2GoblinInTheCity","GLOBAL",1)~
EXIT

// Interjections
// Tree of Life, M'Khiin was part of the party in SoD
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) Global("BFSMkTreeOfLife","GLOBAL",0) Global("BFSMkSoDKnown","GLOBAL",1)~ 
EXTERN PLAYER1 bfsmktree1
END

CHAIN PLAYER1 bfsmktree1
@63
DO ~SetGlobal("O#BranTreeOfLife","GLOBAL",1)~
END
++ @64 EXTERN BFSMKJ bfsmktree1.1
++ @65 EXTERN BFSMKJ bfsmktree1.1
++ @66 EXTERN BFSMKJ bfsmktree1.1


CHAIN BFSMKJ bfsmktree1.1
@67
END
COPY_TRANS PLAYER1 33 

// Tree of Life, M'Khiin wasn't party of the party in SoD

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) Global("BFSMkTreeOfLife","GLOBAL",0) !Global("BFSMkSoDKnown","GLOBAL",1)~
EXTERN PLAYER1 bfsmktree2
END

CHAIN PLAYER1 bfsmktree2
@63
DO ~SetGlobal("O#BranTreeOfLife","GLOBAL",1)~
END
++ @64 EXTERN BFSMKJ bfsmktree2.1
++ @65 EXTERN BFSMKJ bfsmktree2.1
++ @66 EXTERN BFSMKJ bfsmktree2.1

CHAIN BFSMKJ bfsmktree2.1
@68 
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 BFSMKBangBangTheIrenicusIsDead
== BFSMKJ IF ~InParty("BFSMK") Range("BFSMK",15) !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @69
END

// Promenade - Circus Tent (Aerie)
I_C_T AERIE 30 BFSMKAERIE1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @70
END

// City Gates - Innkeeper
I_C_T CROBAR01 1 BFSMKCROW
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @71
END

// Slums - Planar Sphere Seller
CHAIN IF WEIGHT #-1 ~InParty("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID) RandomNum(2,1) Global("BFSMkWaylane","GLOBAL",0)~ THEN WAYLANE BFSKinWaylane
@72
DO ~SetGlobal("BFSMkWaylane","GLOBAL",1)~
== BFSMKJ @73
== WAYLANE @74
== BFSMKJ @75
== WAYLANE @76
== BFSMKJ @77
== WAYLANE @78
EXIT

// Slums - Kylie, Turnip Shopkeeper
I_C_T KYLIE1 6 BFSMKTURNIPSTEW
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @79
END

// Copper Coronet - Lehtinan
I_C_T LEHTIN 9 BFSMKLEHT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @80
END

I_C_T LEHTIN 17 BFSMKLEHT2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @81
END

// Copper Coronet - Llynis
I_C_T LLYNIS 0 BFSMKLLYN1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @82
END

I_C_T LLYNIS 5 BFSMKLLYN2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @83
END

I_C_T LLYNIS 11 BFSMKLLYN3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @84
END

I_C_T LLYNIS 12 BFSMKLLYN4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @84
END

// Copper Coronet - Greeter
I_C_T COPGREET 1 BFSMKGREET1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @85
END

I_C_T COPGREET 6 BFSMKGREET2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @86
END

// Copper Coronet - Hendak
I_C_T HENDAK 7 BFSMKHEND1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @87
END

I_C_T HENDAK 2 BFSMKHEND2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @88
END

I_C_T HENDAK 4 BFSMKHEND3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @89
END

// Slums - Slaver Compound
I_C_T HAEGAN 1 BFSMKHAEG1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @90
== HAEGAN @91
END

I_C_T HAEGAN 2 BFSMKHAEG2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @90
== HAEGAN @91
END

I_C_T HAEGAN 3 BFSMKHAEG3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @90
== HAEGAN @91
END

I_C_T HAEGAN 5 BFSMKHAEG4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @90
== HAEGAN @91
END

// De'Arnise Keep, Delcia
I_C_T DELCIA 17 BFSMKDELC1
== DELCIA IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @92
END

I_C_T DELCIA 16 BFSMKDELC2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @93
END

// Bridge District, Rose 
I_C_T MURDGIRL 11 BFSMKROSE1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @94
== BFSMKJ @95 
END

I_C_T MURDGIRL 21 BFSMKROSE2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @96
END

// Bridge District, Qadeel
I_C_T BMERCH1 0 BFSMKOGREMERCH1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @97
END

I_C_T BMERCH1 2 BFSMKOGREMERCH2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @98
END

I_C_T BMERCH1 3 BFSMKOGREMERCH3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @99
END

// Bridge District, Playhouse
I_C_T RAELIS 47 BFSMKRAELIS2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @100
END

// Sewers - Beholder Cult
I_C_T CTRAITOR 2 BFSMKCULT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @101
END

// Underground Temple
I_C_T RIFTC01 6 BFSMKRIFT1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @102
== RIFTC01 @103
END

I_C_T RIFTC02 4 BFSMKRIFT2
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @104
END

I_C_T RIFTG03 7 BFSMKRIFT3
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @105
END

I_C_T RIFTM01 14 BFSMKRIFT4
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @106
END

// Planar Prison
I_C_T PBHUNT01 5 BFSMKPLANAR
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @107
END

// Government District, Viconia
I_C_T VICONI 0 BFSMKVICONI1
== BFSMKJ IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @108
END
