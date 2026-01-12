BEGIN BFSMK25J

/* 
  Friendship Talks 
                  */
/* Talk 1 - Saradush */ 
CHAIN IF ~Global("BFSSaradushTalk","GLOBAL",2)~ THEN BFSMK25J BFS.SaradushDiscussion
@0  
= @1  
DO ~SetGlobal("BFSSaradushTalk","GLOBAL",3)~
END
++ @2 EXTERN BFSMK25J BFS.ThickerSkin
+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @3 EXTERN BFSMK25J BFS.OutsiderRelatable
++ @4 EXTERN BFSMK25J BFS.FearIsTheMindKillerElectricBoogaloo

CHAIN BFSMK25J BFS.ThickerSkin
@5
END
IF ~~ EXTERN BFSMK25J BFS.FearIsTheMindKillerElectricBoogaloo

CHAIN BFSMK25J BFS.OutsiderRelatable
@6 
END
IF ~~ EXTERN BFSMK25J BFS.FearIsTheMindKillerElectricBoogaloo

CHAIN BFSMK25J BFS.FearIsTheMindKillerElectricBoogaloo
@7
= @8
= @9
EXIT

/* Talk 2 - Meet the Bhaalspawn  
Post claiming Yaga-Shura's heart, Pre-Nyalee reunion */ 
CHAIN IF ~Global("BFSMk2Siblings","GLOBAL",2)~ THEN BFSMK25J BFSMk.MeetTheBhaalspawn
@10 
END
++ @11 EXTERN BFSMK25J BFSMk2.FamilyFeud
++ @12 EXTERN BFSMK25J BFSMk2.SpookyScarySkeletons
+ ~!InParty("Sarevok") !InParty("Imoen2")~ + @13 EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople
+ ~InParty("Sarevok") InParty("Imoen2")~ + @14 EXTERN IMOEN25J BFSMk2.ExceptMaybeTheseOnes
+ ~!InParty("Sarevok") InParty("Imoen2")~ + @15 EXTERN IMOEN25J BFSMk2.ImoenRemainsBestSister
+ ~InParty("Sarevok") InParty("Imoen2")~ + @15 EXTERN IMOEN25J BFSMk2.ImoenRemainsBestSisterSarevokJudgesYou
+ ~InParty("Sarevok") InParty("Imoen2")~ + @16 EXTERN IMOEN25J BFSMk2.BegrudgingBro 

CHAIN IMOEN25J BFSMk2.ImoenRemainsBestSister
@17 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN IMOEN25J BFSMk2.ImoenRemainsBestSisterSarevokJudgesYou
@17 
== SAREV25J @18
== IMOEN25J @19 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN IMOEN25J BFSMk2.BegrudgingBro
@17 
== IMOEN25J @20
== SAREV25J @21
== IMOEN25J @19
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN IMOEN25J BFSMk2.ExceptMaybeTheseOnes
@22 
== SAREV25J @23
== IMOEN25J @24 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople 

CHAIN BFSMK25J BFSMk2.FamilyFeud
@25 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN BFSMK25J BFSMk2.SpookyScarySkeletons
@26 
END
IF ~~ EXTERN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople

CHAIN BFSMK25J BFSMk2.IveNeverEvenMetThesePeople
@27
END
++ @28 EXTERN BFSMK25J BFSMk2.ReasonablePeople
++ @29 EXTERN BFSMK25J BFSMk2.SolidStrategy 
++ @30 EXTERN BFSMK25J BFSMk2.Yolo

CHAIN BFSMK25J BFSMk2.ReasonablePeople
@31 
END
IF ~~ EXTERN BFSMK25J BFSMk2.ThereCanBeOnlyOne

CHAIN BFSMK25J BFSMk2.SolidStrategy
@32 
END
IF ~~ EXTERN BFSMK25J BFSMk2.ThereCanBeOnlyOne

CHAIN BFSMK25J BFSMk2.Yolo
@33 
END
IF ~~ EXTERN BFSMK25J BFSMk2.ThereCanBeOnlyOne
 
CHAIN BFSMK25J BFSMk2.ThereCanBeOnlyOne
@34
DO ~SetGlobal("BFSMk2Siblings","GLOBAL",3)~
EXIT		 
   
/*
  Interjections
               */			   
// Saradush, Orphan & Dad
I_C_T ORPHAN1 3 BFSMKORPHAN1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @35
END

I_C_T ORPHAN2 1 BFSMKORPHAN2
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @36
END
			   
// Saradush, Bartender 
I_C_T SARBAR01 0 BFSMKSARBAR1
== SARBAR01 IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @37
END

// Saradush, Bhaalspawn
I_C_T SARBHA02 1 BFSMKSARBHA1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @38
END

// Saradush, Volo
EXTEND_TOP SARVOLO 9 #5
+ ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ + @39 + BFSMKVoloBio
END

CHAIN SARVOLO BFSMKVoloBio
@40
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @41
EXTERN SARVOLO 9

// Saradush, Spirit
I_C_T SARSPIR 0 BFSMK2Spirit1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @42
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @43
== SARSPIR IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @44
END

EXTEND_BOTTOM SARSPIR 2
+ ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ + @45 EXTERN BFSMK25J BFS.KinSaradushSpirit
END

CHAIN BFSMK25J BFS.KinSaradushSpirit
@46
== BFSMK25J @47 
DO ~CreateVisualEffectObject("SPBLESHI","BFSMK")~
== SARSPIR @48
DO ~EraseJournalEntry(73958)
ClearAllActions()
MoveViewObject(Myself,0)
SetGlobal("SarSpirit","AR5006",8)
StartCutSceneMode()
StartCutScene("cut224a")~
EXIT

// Saradush, Melissan
I_C_T SARMEL01 34 BFSMKSARMEL1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @49
END

// Temple, Nyalee
I_C_T HGNYA01 6 BFSMKNYA1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @50
END

I_C_T HGNYA01 29 BFSMKNYA2
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @51
END

// Solar, Throne of Bhaal, Finale
I_C_T FINSOL01 27 BFSMK2Solar1
== BFSMK25J IF ~InParty("BFSMK") InMyArea("BFSMK") !StateCheck("BFSMK",CD_STATE_NOTVALID)~ THEN @52
END
