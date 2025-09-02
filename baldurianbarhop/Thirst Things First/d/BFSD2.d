/* 20250902 - needs more vanilla companion interjections */

BEGIN BFSD2

CHAIN IF WEIGHT #-1 ~Global("BFSDrinkingContest","GLOBAL",0)~ THEN BFSD2 BFSDwarf2
~Another challenger willing to try their luck against Clan Brightblade's best?~
DO ~SetGlobal("BFSDrinkingContest","GLOBAL",0)~
== BFSD1 ~M-Mighty brave o' ye!~
== BFSD2 ~We're only four mugs deep. You may stand a fighting chance.~
END
++ ~I can drink both of you under the table!~ EXTERN BFSD2 BFSDwarf2.1
++ ~What kind of prize do I get when I win?~ EXTERN BFSD2 BFSDwarf2.1
++ ~Getting drunk sounds like the opposite of fun to me.~ EXTERN BFSD2 BFSDwarf2.2
+ ~Class(Player1,THIEF_ALL)~ + ~Sorry, I'll have to decline. I need steady hands for my work.~ EXTERN BFSD2 BFSDwarf2.2
+ ~OR(2) Race(Player1,DWARF) CheckStatGT(Player1,14,INT)~ + ~Clan Brightblade? What brings dwarves from Daggerdale to Baldur's Gate?~ EXTERN BFSD2 BFSDwarf2.Daggerdale

CHAIN BFSD2 BFSDwarf2.Daggerdale
~Business. Heard there's some Iron Crisis brewing here. We figured we'd show them how proper dwarven mining's done. ~
== BFSD1 ~Had.~
== BFSD2 ~Right. Rumour has it the problem's been solved. It's put a dent in our plans but I can respect the work.~
== BFSD1 ~Three cheers tae the heroes!~
== BFSD2 ~Now are you gonna be taking us up on our challenge?~
END
++ ~I can drink both of you under the table!~ EXTERN BFSD2 BFSDwarf2.1
++ ~What kind of prize do I get when I win?~ EXTERN BFSD2 BFSDwarf2.1
++ ~Getting drunk sounds like the opposite of fun to me.~ EXTERN BFSD2 BFSDwarf2.2
+ ~Class(Player1,THIEF_ALL)~ + ~Sorry, I'll have to decline. I need steady hands for my work.~ EXTERN BFSD2 BFSDwarf2.2

CHAIN BFSD2 BFSDwarf2.2
~More drink for the rest of us then. Come, Harben, lets try the tavern the next street over. Heard they sell actual dwarven ale. Not this watered down slop.~
DO ~AddJournalEntry(@9008, QUEST_DONE) ActionOverride("BFSD1",EscapeArea()) EscapeArea()~
EXIT

CHAIN BFSD2 BFSDwarf2.1
~Hah! I like your confidence. If you win, and that's a mighty big if, I'll give you my trusted dwarven mug.~
== BFSD1 ~Don't ye be thinkin' he's cheapin' out either. That mug's a real stunner.~
== BFSD2 ~What say you? There's a prize to be gained and nothing to lose but your pride.~
END
++ ~If you're paying for the drinks, I'm in.~ EXTERN BFSD2 BFSDwarf2.3
++ ~I've heard enough. I refuse to partake in this nonsense.~ EXTERN BFSD2 BFSDwarf2.2

CHAIN BFSD2 BFSDwarf2.3
~That's the spirit!~
== BFSD1 ~Here's the first.~
== JAHEIJ IF ~InParty("JAHEIRA") Detect("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN ~Your mind is a weapon, <CHARNAME>, dulled by every drop you pour down your throat.~
== XANJ IF ~InParty("XAN") Detect("XAN") !StateCheck("XAN",CD_STATE_NOTVALID)~ THEN ~Yes, yes, drown your wits in drink. Why not hasten our inevitable doom?~
END
+ ~!CheckStatGT(Player1,11,CON)~ + ~Ugh...already feeling it...~ EXTERN BFSD2 BFSDwarf2.Fail
+ ~CheckStatGT(Player1,11,CON)~ + ~Hah! Where's the next?~ EXTERN BFSD2 BFSDwarf2.Success1
+ ~OR(2) Class(Player1,BARD_ALL) CheckStatGT(Player1,14,CHR)~ + ~Surely you'll allow me to skip the first round and even the odds?~ EXTERN BFSD2 BFSDwarf2.SkipRound
+ ~OR(2) Class(Player1,THIEF_ALL) CheckStatGT(Player1,14,DEX)~ + ~Quicker than your eyes can follow...and my mug's empty.~ EXTERN BFSD2 BFSDwarf2.Cheat1

CHAIN BFSD2 BFSDwarf2.Fail
~Should have said you're a light-weight.~
== BFSD1 ~Points fer bravery though.~
END
++ ~...~ EXTERN BFSD2 BFSDwarf2.2

CHAIN BFSD2 BFSDwarf2.Cheat1
~Moradin's beard! Did you even see <PRO_HIMHER> drink, Harben?~
== BFSD1 ~Nae.~
END
+ ~OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALFORC) Race(Player1,HALF_ELF)~ + ~Keep them coming! I'm just getting started!~ EXTERN BFSD2 BFSDwarf.Round2Tall
+ ~OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ + ~Keep them coming! I'm just getting started!~ EXTERN BFSD2 BFSDwarf.Round2Short
++ ~I've had enough.~ EXTERN BFSD2 BFSDwarf2.2


CHAIN BFSD2 BFSDwarf2.SkipRound
~A fair request. I'll not have anyone doubting Clan Brightblade's honor.~
== BFSD1 ~Hah!~
END
+ ~OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALFORC) Race(Player1,HALF_ELF)~ + ~Keep them coming! I'm just getting started!~ EXTERN BFSD2 BFSDwarf.Round2Tall
+ ~OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ + ~Keep them coming! I'm just getting started!~ EXTERN BFSD2 BFSDwarf.Round2Short
++ ~I've had enough.~ EXTERN BFSD2 BFSDwarf2.2

CHAIN BFSD2 BFSDwarf2.Success1
~Seems we have ourselves a contender.~
== BFSD1 ~Next...round.~
END
+ ~OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALFORC) Race(Player1,HALF_ELF)~ + ~Keep them coming! I'm just getting started!~ EXTERN BFSD2 BFSDwarf.Round2Tall
+ ~OR(3) Race(Player1,DWARF) Race(Player1,HALFLING) Race(Player1,GNOME)~ + ~Keep them coming! I'm just getting started!~ EXTERN BFSD2 BFSDwarf.Round2Short
++ ~I've had enough.~ EXTERN BFSD2 BFSDwarf2.2

CHAIN BFSD2 BFSDwarf.Round2Tall
~The bigger they are, the harder they fall, eh, Harben?~
== BFSD1 ~Less talkin', more drinkin'.~
== YESLIJ IF ~InParty("YESLICK") Detect("YESLICK") !StateCheck("YESLICK",CD_STATE_NOTVALID)~ THEN ~Ye'll have tae pace yerself if ye want tae win this fight.~
END
+ ~!CheckStatGT(Player1,13,CON)~ + ~Urgh...head's spinnin'...~ EXTERN BFSD2 BFSDwarf2.Fail
+ ~CheckStatGT(Player1,13,CON)~ + ~I'm still standing. Pour again!~ EXTERN BFSD2 BFSDwarf2.Success2
++ ~I've had enough.~ EXTERN BFSD2 BFSDwarf2.2

CHAIN BFSD2 BFSDwarf.Round2Short
~It's good we're taking on someone our own size.~
== BFSD1 ~Less talkin', more drinkin'.~
== YESLIJ IF ~InParty("YESLICK") Detect("YESLICK") !StateCheck("YESLICK",CD_STATE_NOTVALID)~ THEN ~Ye'll have tae pace yerself if ye want tae win this fight.~
END
+ ~!CheckStatGT(Player1,13,CON)~ + ~Urgh...head's spinnin'...~ EXTERN BFSD2 BFSDwarf2.Fail
+ ~CheckStatGT(Player1,13,CON)~ + ~I'm still standing. Pour again!~ EXTERN BFSD2 BFSDwarf2.Success2
++ ~I've had enough.~ EXTERN BFSD2 BFSDwarf2.2

CHAIN BFSD2 BFSDwarf2.Success2
~No one else has lasted this long. You're a rare breed, <PRO_RACE>.~
== BFSD1 ~Startin' tae feel the drink meself.~
== BFSD2 ~Final round. We win or we lose.~
== MINSCJ IF ~InParty("MINSC") Detect("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN ~Boo says you must not falter! Take a last, mighty gulp!~
== BAELOTHJ IF ~InParty("BAELOTH") Detect("BAELOTH") !StateCheck("BAELOTH",CD_STATE_NOTVALID)~ THEN ~A contest most crude, yet still curiously captivating.~
END
+ ~!CheckStatGT(Player1,15,CON)~ + ~Too much...can't...hold...~ EXTERN BFSD2 BFSDwarf2.Fail
+ ~Race(Player1,DWARF) CheckStatGT(Player1,15,CON)~ + ~That's another drink down!~ EXTERN BFSD2 BFSDwarf2.Success3Dwarf
+ ~!Race(Player1,DWARF) CheckStatGT(Player1,15,CON)~ + ~That's another drink down!~ EXTERN BFSD2 BFSDwarf2.Success3
++ ~I've had enough.~ EXTERN BFSD2 BFSDwarf2.2

CHAIN BFSD2 BFSDwarf2.Success3Dwarf
~Aye. Seems you've won. I'm happy to call you kin.~
== BFSD1 ~Real impressive showin' that.~
== BFSD2 ~I think you've more than earned this.~
END
++ ~Is this...a mug on a stick?~ EXTERN BFSD2 BFSDwarf2.Reward

CHAIN BFSD2 BFSDwarf2.Success3
~Well, well, would you look at that? You'd make a better dwarf than some of our kin! You've earned this.~
== BFSD1 ~Real impressive showin' that.~
== BFSD2 ~I think you've more than earned this.~
END
++ ~Is this...a mug on a stick?~ EXTERN BFSD2 BFSDwarf2.Reward

CHAIN BFSD2 BFSDwarf2.Reward
~She'll treat you well, she will. Come, Harben, lets try the tavern the next street over. Heard they sell actual dwarven ale. Not this watered down slop.~
DO ~GiveItemCreate("BFSMG",Player1,1,0,0) AddJournalEntry(@9007, QUEST_DONE) ActionOverride("BFSD1",EscapeArea()) EscapeArea()~
EXIT
