BEGIN BFSCR

CHAIN IF ~Global("BFSCRTALKED","GLOBAL",0)~ THEN BFSCR BFSCRIBE1
~By Oghma's quill! Why now of all times?~
DO ~SetGlobal("BFSCRTALKED","GLOBAL",1)~
== BFSCR ~Oh! Forgive me, <CHARNAME>, is ought amiss?~
END
++ ~I couldn't help but overhear your muttering. Is something troubling you?~ EXTERN BFSCR BFSCR2 
++ ~You look positively green. Should I fetch a healer before you faint?~ EXTERN BFSCR BFSCR5
++ ~I'll leave you to your thoughts.~ EXTERN BFSCR BFSCREXIT

CHAIN BFSCR BFSCREXIT
~I appreciate it. Good <DAYNIGHT> to you, <CHARNAME>, and may Oghma aid you in your studies.~
DO ~EscapeArea()~ EXIT

CHAIN BFSCR BFSCREXIT2
~You're right, I'm overthinking it. We are in Candlekeep, after all, and it's as safe a place as any.~
== BFSCR ~Thank you for your reassurance, <CHARNAME>. May Oghma aid you in your studies.~
DO ~EscapeArea()~ EXIT

CHAIN BFSCR BFSCREXIT3
~...And I ought to stop delaying.~
== BFSCR ~Good <DAYNIGHT> to you, <CHARNAME>, and may Oghma aid you in your studies.~
DO ~EscapeArea()~ EXIT

CHAIN BFSCR BFSCR5
~Hah! No, no healer required. Just frayed nerves.~
END
IF ~~ EXTERN BFSCR BFSCR2

CHAIN BFSCR BFSCR2
~I'm to depart for Beregost soon, carrying book copies commissioned by Lord Travenhurst. Yet the scribe Gazz, who completed one of the volumes, has gone missing.~
== BFSCR ~I found his chamber empty. The copy was there, but not the man, and no one has seen him since yesterday.~
== BFSCR ~His absence gnaws at me. A scribe's duty is often dull work. ...Or so I believed.~
END
++ ~He's likely tucked away in some corner with another book.~ EXTERN BFSCR BFSCR3
++ ~If he's clever, he'll have slipped away to avoid all this drudgery.~ EXTERN BFSCR BFSCR3
++ ~I don't have time to listen to your problems.~ EXTERN BFSCR BFSCREXIT3

CHAIN BFSCR BFSCR3
~A fair guess though my unease lingers.~
== BFSCR ~I cannot spare the time to look for him, however, since these books won't deliver themselves.~
END
++ ~Give them to me. I'm leaving Candlekeep soon and can deliver them.~ EXTERN BFSCR BFSCR4
++ ~They certainly won't. Stop worrying, Gazz will turn up eventually.~ EXTERN BFSCR BFSCREXIT2

CHAIN BFSCR BFSCR4
~An unusual offer. The Avowed entrust such tasks only to our own, yet you are Gorion's ward.~
== BFSCR ~Very well, here is my satchel. All three books are safely stashed within. Deliver them to Travenhurst Manor at your earliest convenience.~
== BFSCR ~The satchel is yours to keep as early payment. May it may serve you well during your travels.~ 
== BFSCR ~Now...where can Gazz be?~
DO ~SetGlobal("BFFULLYBOOKED","GLOBAL",1) GiveItemCreate("BFSCB",Player1,1,0,0) AddJournalEntry(@9001, QUEST) EscapeArea()~ EXIT
