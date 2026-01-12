BEGIN BFSMKB

/* Base BG2 NPCs */ 
// Aerie 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkAerie1","GLOBAL",0)~ THEN BAERIE BFSMkAerie1
@0
DO ~SetGlobal("BFSMkAerie1","GLOBAL",1)~
== BFSMKB @1
== BAERIE @2
== BFSMKB @3
EXIT

// Anomen 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkAnomen1","GLOBAL",0)~ THEN BANOMEN BFSMkAnomen1
@4
DO ~SetGlobal("BFSMKAnomen1","GLOBAL",1)~
== BFSMKB @5
== BANOMEN @6
== BFSMKB @7
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @8
== BANOMEN @9
== BFSMKB @10
EXIT


// Cernd
CHAIN 
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkCernd1","GLOBAL",0)~ THEN BCERND BFSMkCernd1
@11
DO ~SetGlobal("BFSMkCernd1","GLOBAL",1)~
== BFSMKB @12
== BCERND @13
EXIT

// Edwin
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkEdwin1","GLOBAL",0)~ THEN BEDWIN BFSMkEdwin1
@14
DO ~SetGlobal("BFSMkEdwin1","GLOBAL",1)~
== BFSMKB @15
== BEDWIN @16 
== BFSMKB @17 
EXIT

// Haer'Dalis 1
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkHaerDalis2","GLOBAL",0)~ THEN BHAERDA BFSMkHaerDalis2
@18
DO ~SetGlobal("BFSMkHaerDalis2","GLOBAL",1)~
== BFSMKB @19
== BHAERDA @20
== BHAERDA @21
== BFSMKB @22 
EXIT

// Imoen 1
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkImoen1","GLOBAL",0)~ THEN IMOEN2J BFSMkImoen1
@23
DO ~SetGlobal("BFSMkImoen1","GLOBAL",1)~
== BFSMKB @24
EXIT

// Jaheira 1 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(CITY)
Global("BFSMkJaheira1","GLOBAL",0)~ THEN BJAHEIR BFSMkJaheira1
@25
DO ~SetGlobal("BFSMkJaheira1","GLOBAL",1)~
== BFSMKB @26
== BJAHEIR @27
EXIT

// Jan Jansen
// three goblins in a trenchcoat
CHAIN 
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJan1","GLOBAL",0)~ THEN BJAN BFSMkJan1
@28
DO ~SetGlobal("BFSMkJan1","GLOBAL",1)~
== BFSMKB @29
== BJAN @30
== BFSMKB @31
== BJAN @32
== BJAN @33 
== BFSMKB @34
== BJAN @35 
EXIT

// Keldorn 
CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkKeldorn1","GLOBAL",0)~ THEN BFSMKB BFSMkKeldorn1
@36
DO ~SetGlobal("BFSMkKeldorn1","GLOBAL",1)~
== BKELDOR @37
== BFSMKB @38
== BFSMKB @39
== BKELDOR @40
== BFSMKB IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @41
== BKELDOR IF ~Alignment("BFSMK",NEUTRAL_GOOD)~ THEN @42 
EXIT

// Korgan
CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkKorgan1","GLOBAL",0)~ THEN BFSMKB BFSMkKorgan1
@43
DO ~SetGlobal("O#BranKorgan1","GLOBAL",1)~
== BKORGAN @44
== BFSMKB @45
EXIT

// Valygar 1 
CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkValygar1","GLOBAL",0)~ THEN BFSMKB BFSMkValygar1
@46 
DO ~SetGlobal("BFSMkValygar1","GLOBAL",1)~
== BVALYGA @47
== BFSMKB @48 
== BVALYGA @49
== BVALYGA @50 
== BFSMKB @51 
== BVALYGA @52 
EXIT

// Viconia 
CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkViconia2","GLOBAL",0)~ THEN BFSMKB BFSMkViconia2
@53 
DO ~SetGlobal("BFSMkViconia2","GLOBAL",1)~
== BVICONI @54 
== BFSMKB @55 
== BVICONI @56 
== BFSMKB @57 
== BVICONI @58
EXIT

// Yoshimo 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkYoshimo1","GLOBAL",0)~ THEN BYOSHIM BFSMkYoshimo1
@59
DO ~SetGlobal("BFSMkYoshimo1","GLOBAL",1)~
== BFSMKB @60
== BYOSHIM @61 
== BFSMKB @62
== BYOSHIM @63
== BFSMKB @64
== BYOSHIM @65
== BFSMKB @66
== BYOSHIM @67
== BFSMKB @68
EXIT

// Aerie 2
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkAerie2","GLOBAL",0)~ THEN BAERIE BFSMkAerie2
@69
DO ~SetGlobal("BFSMkAerie2","GLOBAL",1)~
== BFSMKB @70
== BAERIE @71
EXIT

// Haer'Dalis 2
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkHaerDalis2","GLOBAL",1)
Global("BFSMkHaerDalis3","GLOBAL",0)~ THEN BFSMKB BFSMkHaerDalis3
@72
DO ~SetGlobal("BFSMkHaerDalis3","GLOBAL",1)~
== BHAERDA @73
== BFSMKB @74
== BHAERDA @75
== BFSMKB @76
== BHAERDA @77
EXIT

// Imoen 2
CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkImoen2","GLOBAL",0)~ THEN BFSMKB BFSMkImoen2
@78
DO ~SetGlobal("BFSMkImoen2","GLOBAL",1)~
== IMOEN2J @79
== BFSMKB @80
== BFSMKB @81
EXIT

// Edwin 2 
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkEdwin2","GLOBAL",0)~ THEN BEDWIN BFSMkEdwin2
@82
DO ~SetGlobal("BFSMkEdwin2","GLOBAL",1)~
== BFSMKB @83
EXIT

// Jaheira 2 
CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkJaheira2","GLOBAL",0)~ THEN BFSMKB BFSMkJaheira2
@84
DO ~SetGlobal("BFSMkJaheira2","GLOBAL",1)~
== BJAHEIR @85
== BFSMKB @86
== BJAHEIR @87
== BFSMKB @88
EXIT

/* fits well into her later banters with Haer'Dalis about Goblins beyond the Prime */ 
// Yoshimo 2
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkYoshimo2","GLOBAL",0)~ THEN BYOSHIM BFSMkYoshimo2
@89
DO ~SetGlobal("BFSMkYoshimo2","GLOBAL",1)~
== BFSMKB @90
== BYOSHIM @91
== BFSMKB @92
EXIT

// Haer'Dalis 3 - if M'Khiin was part of the party in SoD
CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkSoDKnown","GLOBAL",1)
Global("BFSMkHaerDalis1","GLOBAL",0)~ THEN BFSMKB BFSMkHaerDalis1
@93
DO ~SetGlobal("BFSMkHaerDalis1","GLOBAL",1)~
== BHAERDA @94
== BHAERDA @95
== BFSMKB @96
== BHAERDA @97
== BFSMKB @98
EXIT

// Anomen 2, Chaotic Neutal
CHAIN  
IF ~InParty("BFSMK")  
See("BFSMK")  
!StateCheck("Anomen",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("BFSMkAnomen3","GLOBAL",0)~ THEN BANOMEN BFSMkAnomen3  
@99  
DO ~SetGlobal("BFSMkAnomen3","GLOBAL",1)~  
== BFSMKB @100  
== BANOMEN @101  
== BFSMKB @102  
== BANOMEN @103
EXIT  

// Cernd 2
CHAIN  
IF ~InParty("Cernd")  
See("Cernd")  
!StateCheck("Cernd",CD_STATE_NOTVALID)  
!StateCheck("BFSMK",CD_STATE_NOTVALID)  
CombatCounter(0)  
!See([ENEMY])  
Global("BFSMkCernd3","GLOBAL",0)~ THEN BFSMKB BFSMkCernd3  
@104  
DO ~SetGlobal("BFSMkCernd3","GLOBAL",1)~  
== BCERND @105  
== BFSMKB @106  
== BCERND @107  
== BFSMKB @108
== BCERND @109 
== BFSMKB @110 
EXIT  


/* EE NPCs */ 
// Dorn
CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkDorn1","GLOBAL",0)~ THEN BFSMKB BFSMkDorn1
@111
DO ~SetGlobal("BFSMkDorn1","GLOBAL",1)~
== BDORN @112
== BFSMKB @113
== BDORN @114 
== BFSMKB @115 
EXIT

// Hexxat
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkHexxat1","GLOBAL",0)~ THEN BHEXXAT BFSMkHexxat1
@116
DO ~SetGlobal("BFSMkHexxat1","GLOBAL",1)~
== BFSMKB @117 
== BFSMKB @118
EXIT

// Neera
CHAIN
IF ~InParty("BFSMK")
See("BFSMK")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
Global("BFSMkNeera1","GLOBAL",0)~ THEN BNEERA BFSMkNeera1
@119
DO ~SetGlobal("BFSMkNeera1","GLOBAL",1)~
== BFSMKB @120
== BNEERA @121
== BFSMKB @122
== BNEERA @123
== BFSMKB @124
== BNEERA @125
== BFSMKB @126 
== BNEERA @127
EXIT

// Rasaad
CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkRasaad1","GLOBAL",0)~ THEN BFSMKB BFSMkRasaad1
@128 
DO ~SetGlobal("BFSMkRasaad1","GLOBAL",1)~
== BRASAAD @129 
== BFSMKB @130 
== BRASAAD @131 
== BFSMKB @132 
== BFSMKB @133
== BRASAAD @134 
EXIT


// Wilson
// Not saying she has a favourite, but she definitely has a favourite
CHAIN
IF ~InParty("WILSON")
See("WILSON")
!StateCheck("WILSON",CD_STATE_NOTVALID)
!StateCheck("BFSMK",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("BFSMkWilson1","GLOBAL",0)~ THEN BFSMKB BFSMkWilson1
@135
DO ~SetGlobal("BFSMkWilson","GLOBAL",1)~
== BWILSON @136 
== BFSMKB @137
EXIT
