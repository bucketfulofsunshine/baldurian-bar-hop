/* 20250902 - still needs vanilla companion interjections
still needs more player dialogue variations */

BEGIN BFSCR2

// intro & wolves
CHAIN IF ~Global("BFSGAZZCONVO","GLOBAL",0)~ THEN BFSCR2 GAZZINTRO
~By the Weave! Someone actually found me!~
DO ~SetGlobal("BFSGAZZCONVO","GLOBAL",1)~
== BFSCR2 ~I feared I'd be trapped inside this drawing forever.~
END
++ ~Gazz, I presume? Your absence in Candlekeep was noted.~ EXTERN BFSCR2 GAZZEXTENDEDVACATION
++ ~Tell us what happened.~ EXTERN BFSCR2 GAZZ2
++ ~I get the feeling I'm not on Faerûn anymore.~ EXTERN BFSCR2 GAZZ2

CHAIN BFSCR2 GAZZEXTENDEDVACATION
~One does like to hear one is missed by one's peers. Whether they feel the same way after this latest mishap, well, that remains to be seen.~
END
IF ~~ EXTERN BFSCR2 GAZZ2

CHAIN BFSCR2 GAZZ2
~While copying the illustrations of Lord Travenhurst's book, I attempted something ambitious. Rather than painstakingly drawing the picture anew, I chose to duplicate it using magic. A variation on simulacrum, but meant to work with ink.~
== BFSCR2 ~I'm certain my spell would have gone flawlessly...had my wild magic not surged at the last moment. Somehow I seem to have cast a teleport field instead. One that draws in anyone who inspects the book too closely.~
END
+ ~Class(Player1,MAGE_ALL) !Kit(Player1,WILDMAGE)~ + ~Typical wild mage folly.~ EXTERN BFSCR2 GAZZSCOLD
+ ~Kit(Player1,WILDMAGE)~ + ~It always happens at the most inconvenient times, doesn't it?~ EXTERN BFSCR2 GAZZSYMPATHY
++ ~We should focus on finding a way out.~ EXTERN BFSCR2 GAZZCONTINUE
++ ~You should have researched your theory before trying it on a book!~ EXTERN BFSCR2 GAZZSCOLD
+ ~Class(Player1,BARD_ALL)~ + ~I've always wanted to be part of a story, but this isn't quite what I had in mind.~ EXTERN BFSCR2 GAZZCONTINUE
 
CHAIN BFSCR2 GAZZSCOLD
~Yes, yes, I know! I should have been more careful. Or as careful as I can be given my particular 'talent'.~
END
IF ~~ EXTERN BFSCR2 GAZZCONTINUE

CHAIN BFSCR2 GAZZSYMPATHY
~And in the most unorthodox of ways. For a wild mage, the Weave has a will of its own.~
END
IF ~~ EXTERN BFSCR2 GAZZCONTINUE

CHAIN BFSCR2 GAZZCONTINUE
~I believe, if we follow the story through to its end, the spell will break. Let's see if I recall the next verse...~
== BFSCR2 ~As they walk,
the wolves draw near,
their eyes aglow, 
their hunger clear.~
DO ~PlaySound("WWOLF03")
CreateCreatureEffect("WOLF","SPCLOUD2",[1386.534],W)
CreateCreatureEffect("WOLF","SPCLOUD2",[1382.621],NW)
CreateCreatureEffect("WOLF","SPCLOUD2",[1294.635],N)
AddJournalEntry(@9004, QUEST)
MoveToPoint([751.538])~ EXIT

// fairy dragons & ogre mage
CHAIN IF ~Global("BFSGAZZCONVO","GLOBAL",2)~ THEN BFSCR2 GAZZINTRO2
~Dragons dance, their wide eyes bright,
In praise of scales that catch the light.
Yet merriment may turn to fear,
For not all things are what they appear.~
DO ~SetGlobal("BFSGAZZCONVO","GLOBAL",3)~ 
== BFFAIR ~Mighty kin, strong and true, we fairy dragons welcome you!~
== BFFAIR ~So smart, so brave, you rule the skies
Will we, one day, grow to match your size?~
END
+ ~OR(2) CheckStatGT(Player1,14,WIS) CheckStatGT(Player1,14,INT)~ + ~I see through your illusion, ogre!~ EXTERN BFSCR2 GAZZDISPEL
++ ~Is something amiss? Or...?~ EXTERN BFSCR2 GAZZHINT
++ ~Gazz, I grow tired of riddles. Speak plainly or else!~ EXTERN BFSCR2 GAZZHINT
++ ~That dragon is truly magnificent!~ EXTERN BFSCR2 GAZZHINT

CHAIN BFSCR2 GAZZHINT
~The flock gasps as guise comes undone,
An ogre smirks and they flee, they run!~
DO ~ActionOverride("BFFAIR",EscapeArea())
ActionOverride("BFFAI2",EscapeArea())
ActionOverride("BFFAI3",EscapeArea())
ActionOverride("BFDRAG",DestroySelf())
PlaySound("EFF_M10")
CreateCreatureEffect("BPOGMA01","SPDISPMA",[470.561],E)~ EXIT

CHAIN BFSCR2 GAZZDISPEL
~Your foe will strike with trick and guile,
Endure the test and win the trial.~
DO ~ActionOverride("BFFAIR",EscapeArea())
ActionOverride("BFFAI2",EscapeArea())
ActionOverride("BFFAI3",EscapeArea())
ActionOverride("BFDRAG",DestroySelf())
PlaySound("EFF_M10")
CreateCreatureEffect("BPOGMA01","SPDISPMA",[470.561],E)~ EXIT

// outro
CHAIN IF ~Global("BFSGAZZCONVO","GLOBAL",4)~ THEN BFSCR2 GAZZOUTRO
~Well fought! But I don't sense a change in our fortunes. Unless, ah, a few ending lines and a simple incantation will suffice?~
DO ~SetGlobal("BFSGAZZCONVO","GLOBAL",5)~ 
== BFSCR2 ~The book now closes, its tale complete,
The forest fades beneath our feet.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("BFSC2C")~ EXIT

// quest completion
CHAIN IF ~Global("BFSBOOKESCAPE","GLOBAL",1)~ THEN BFSCR2 GAZZRETURN
~That seems to have done the trick.~
DO ~SetGlobal("BFSBOOKESCAPE","GLOBAL",2)~
== NOBL10 ~You return and safely at that! For a moment, I feared the worst!~
== NOBL10 ~...And I see you have found another friend.~
== BFSCR2 ~Greetings, Lord Travenhurst. I am Gazz, the scribe responsible for your copy of Flight of the Fairy Dragons. I apologize for the inconvenience it caused and, I assure you, the incident will not be repeated.~
END
++ ~Muted tones, finally. My eyes were beginning to strain from the abundance of color.~ EXTERN BFSCR2 PLAYERREWARD
++ ~...And people still believe reading to be a safe hobby.~ EXTERN BFSCR2 PLAYERREWARD
++ ~We're unharmed. That's all that matters.~EXTERN BFSCR2 PLAYERREWARD

CHAIN BFSCR2 PLAYERREWARD
~I should head back to Candlekeep. While I fear they may not grant me entrance, for lack of a rare tome, I should inform them of my whereabouts.~
== BFSCR2 ~'Ere I leave, take this staff, <CHARNAME>. Remarkably it has retained its shape even outside of the story. I hope it serves you well during the stories you've yet to write.~
DO ~AddExperienceParty(1500)
GiveItemCreate("BFOSTF",Player1,1,0,0)
AddJournalEntry(@9005, QUEST_DONE)
EscapeArea()~ EXIT
