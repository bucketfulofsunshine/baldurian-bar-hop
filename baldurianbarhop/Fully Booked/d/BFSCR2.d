BEGIN BFSCR2

CHAIN IF ~Global("BFSGAZZCONVO","GLOBAL",0)~ THEN BFSCR2 GAZZINTRO
~By the Weave! Someone actually found me!~
DO ~SetGlobal("BFSGAZZCONVO","GLOBAL",1)~
== BFSCR2 ~I feared I'd be trapped inside this drawing forever.~
END
++ ~Gazz, I presume? Your absence in Candlekeep was noted.~ EXTERN BFSCR2 GAZZEXTENDEDVACATION
++ ~Tell us what happened.~ EXTERN BFSCR2 GAZZ2
++ ~I get the feeling I'm not on Faerun anymore.~ EXTERN BFSCR2 GAZZ2

CHAIN BFSCR2 GAZZEXTENDEDVACATION
~One does like to hear one is missed by one's peers. If they feel the same way after this latest mishap, well, that remains to be seen.~
END
IF ~~ EXTERN BFSCR2 GAZZ2

CHAIN BFSCR2 GAZZ2
~While copying the illustrations of Lord Travenhurst's book, I attempted something ambitious. Rather than painstakingly drawing the picture anew, I chose to duplicate it using magic. A variation on simulacrum but meant to work with ink.~
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
~And in the most unorthodox of ways. For a wild mage the Weave has its own will.~
END
IF ~~ EXTERN BFSCR2 GAZZCONTINUE

CHAIN BFSCR2 GAZZCONTINUE
~I believe, if we see the story through to its end, the spell will break. Though, as last time, that remains a theory. I even recall the next verse.~
== BFSCR2 ~Through orange boughs the wolves draw near,
Their eyes aglow, their hunger clear.~
DO ~PlaySound("WWOLF03")
CreateCreatureEffect("WOLF","SPCLOUD2",[1673.378],N)
CreateCreatureEffect("WOLF","SPCLOUD2",[1752.334],NW)
CreateCreatureEffect("WOLF","SPCLOUD2",[1611.321],NE)
AddJournalEntry(@9004, QUEST)
MoveToPoint([1026.734],W)~ EXIT
