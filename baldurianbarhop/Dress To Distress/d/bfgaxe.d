BEGIN BFGAXE

CHAIN IF ~Global("BFGOBKITCHEN","GLOBAL",0)~ THEN BFGAXE bf.gobintro
~*sniff-sniff* Lotsa food...~
DO ~SetGlobal("BFGOBKITCHEN","GLOBAL",1)~
== BFGARC ~Mmm. Smells good in here.~ 
== BFGAXE ~Feast!~
== BFGARC ~Devour!~ 
== BFGAXE ~Shh, shh. You hear that? Someone is coming!~
== BFGARC ~Hey, you. You food person? Bring us more!~
END
++ ~Who are you, and what are you doing in the kitchen?~ EXTERN BFGAXE bf.gobreply1
++ ~Are you part of the masquerade?~ EXTERN BFGAXE bf.gobreply2
++ ~Leave now or you will be removed.~ EXTERN BFGAXE bf.gobreply3

CHAIN BFGAXE bf.gobreply1
~We here for...very important business.~
== BFGARC ~We here for...tasting. Quality control.~
END
IF ~~ EXTERN BFGAXE bf.gobguests

CHAIN BFGAXE bf.gobreply2
~Masquerade? Oh, yes. Very fancy. We love mask thing.~
== BFGARC ~These are our...faces.~
END
IF ~~ EXTERN BFGAXE bf.gobguests

CHAIN BFGAXE bf.gobreply3
~No. Inside has food.~
== BFGARC ~And we invited friends. Many friends.~
END
IF ~~ EXTERN BFGAXE bf.gobguests

CHAIN BFGAXE bf.gobguests
~We are guests. Very small guests. Very hungry guests.~
== BFGARC ~Food belongs to whoever has knife first.~
== BFGAXE ~We have knife. And axe.~
== BFGARC ~And bow.~
END
++ ~Are you threatening me?~ EXTERN BFGAXE bf.gobthreat
++ ~You are stealing food.~ EXTERN BFGAXE bf.gobsteal
++ ~I think the masquerade is over for you.~ EXTERN BFGAXE bf.gobcaught
++ ~You chose the wrong kitchen to raid.~ EXTERN BFGAXE bf.gobwrong
++ ~I believe we're done talking.~ EXTERN BFGAXE bf.gobcombat

CHAIN BFGAXE bf.gobthreat
~Maybe.~
== BFGARC ~Depends if you fight back.~
END
IF ~~ EXTERN BFGAXE bf.gobcombat

CHAIN BFGAXE bf.gobsteal
~What stealing?~
== BFGARC ~Not stealing. Finding.~
END
IF ~~ EXTERN BFGAXE bf.gobcombat

CHAIN BFGAXE bf.gobcaught
~Never came for party.~
== BFGARC ~Don't care. Only came to eat.~
END
IF ~~ EXTERN BFGAXE bf.gobcombat

CHAIN BFGAXE bf.gobwrong
~Wrong kitchen?~
== BFGARC ~Then why so much food?~
END
IF ~~ EXTERN BFGAXE bf.gobcombat

CHAIN BFGAXE bf.gobcombat
~Fight! Fight! Food fight!~
== BFGARC ~Come, friends, help us!~
DO ~SetGlobal("BFGOBFIGHT","GLOBAL",1) 
ActionOverride("BFGARC",Enemy())
ActionOverride("BFGAXE",Enemy())
~
EXIT
