BEGIN BFSMKB25

// Aerie
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Aerie",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkAerieToB1","GLOBAL",0)~ THEN BAERIE25 BFSMkAerieToB1  
@0  
DO ~SetGlobal("BFSMkAerieToB1","GLOBAL",1)~  
== BFSMKB25 @1  
== BAERIE25 @2  
EXIT

/* Anomen, Lawful Good 
M'Khiin arc unfinished */
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",LAWFUL_GOOD)
!GlobalGT("BFSMkPlanesTalk","GLOBAL",1)
Global("BFSMkAnomenToB1","GLOBAL",0)~ THEN BANOME25 BFSMkAnomenToB1  
@3  
DO ~SetGlobal("BFSMkAnomenToB1","GLOBAL",1)~  
== BFSMKB25 @4  
== BANOME25 @5  
== BFSMKB25 @6
EXIT  

/* Anomen, Lawful Good
M'Khiin arc fininished */
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",LAWFUL_GOOD)
GlobalGT("BFSMkPlanesTalk","GLOBAL",1)
Global("BFSMkAnomenToB1","GLOBAL",0)~ THEN BANOME25 BFSMkAnomenToB1  
@3  
DO ~SetGlobal("BFSMkAnomenToB1","GLOBAL",1)~  
== BFSMKB25 @7
== BANOME25 @8  
== BFSMKB25 @9
EXIT  

/* Cernd */
CHAIN  
IF ~InParty("Cernd")  
See("Cernd")  
!StateCheck("Cernd",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkCerndToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkCerndToB1  
@10  
DO ~SetGlobal("BFSMkCerndToB1","GLOBAL",1)~  
== BCERND25 @11  
== BFSMKB25 @12
EXIT 

/* Edwin */
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Edwin",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkEdwinToB1","GLOBAL",0)~ THEN BEDWIN25 BFSMkEdwinToB1  
@13  
DO ~SetGlobal("BFSMkEdwinToB1","GLOBAL",1)~  
== BFSMKB25 @14  
== BEDWIN25 @15
EXIT 


/* Haer'Dalis, hinting towards M'Khiin's epilogue */ 
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKHaerDalisToB1","GLOBAL",0)~ THEN BFSMKB25 BFS.MkHaerDalisToB1
@16
DO ~SetGlobal("BFSMKHaerDalisToB1","GLOBAL",1)~
== BHAERD25 @17
== BFSMKB25 @18
== BHAERD25 @19
== BHAERD25 @20
== BHAERD25 @21  
== BFSMKB25 @22  
== BHAERD25 @23  
== BFSMKB25 @24
EXIT

/* Imoen */
CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKImoenToB1","GLOBAL",0)~ THEN BFSMKB25 BFS.MkImoenToB1
@25
DO ~SetGlobal("BFSMKImoenToB1","GLOBAL",1)~
== BIMOEN25 @26
== BFSMKB25 @27 
== BIMOEN25 @28 
== BFSMKB25 @29 
== BIMOEN25 @30
EXIT

/* Jaheira */ 
CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJaheiraToB1","GLOBAL",0)~ THEN BFSMKB25 BFSMkJaheiraToB1
@31 
DO ~SetGlobal("BFSMkJaheiraToB1","GLOBAL",1)~
== BJAHEI25 @32
== BJAHEI25 @33 
== BFSMKB25 @34
== BJAHEI25 @35
== BFSMKB25 @36 
EXIT

/* Jan */
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJanToB1","GLOBAL",0)~ THEN BJAN25 BFSMkJanToB1
@37 
DO ~SetGlobal("BFSMkJanToB1","GLOBAL",1)~
== BFSMKB25 @38
== BFSMKB25 @39
== BJAN25 @40 
== BFSMKB25 @41 
== BJAN25 @42 
EXIT

/* Imoen 2
Dream Talk Continued */
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMKImoenToB2","GLOBAL",0)~ THEN BIMOEN25 BFS.MkImoenToB2
@43
DO ~SetGlobal("BFSMKImoenToB2","GLOBAL",1)~
== BFSMKB25 @44 
== BIMOEN25 @45 
== BFSMKB25 @46 
EXIT
