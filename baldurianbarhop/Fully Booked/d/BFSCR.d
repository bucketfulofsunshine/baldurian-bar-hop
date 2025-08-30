BEGIN BFSCR

CHAIN IF ~Global("BFSCRTALKED","GLOBAL",0)~ THEN BFSCR BFSCRIBE1
~Apologies. My mind wanders more than it should.~
DO ~SetGlobal("BFSCRTALKED","GLOBAL",1)~
END
++ ~I couldn't help but overhear your muttering. Is something troubling you?~ EXTERN BFSCR BFSCR2 
++ ~I'll leave you to your thoughts.~ EXTERN BFSCR BFSCREXIT

CHAIN BFSCR BFSCREXIT
~I appreciate it. Good <DAYNIGHT> to you, <CHARNAME>, and may Oghma aid you in your studies.~
DO ~EscapeArea()~ EXIT

CHAIN BFSCR BFSCREXIT2
~You're right, I'm overthinking it. We are in Candlekeep, after all, it's as safe as any place can be.~
== BFSCR ~Thank you for your reassurance, <CHARNAME>. May Oghma aid you in your studies.~
DO ~EscapeArea()~ EXIT

CHAIN BFSCR BFSCREXIT3
~...And I ought to stop delaying.~
== BFSCR ~Good <DAYNIGHT> to you, <CHARNAME>, and may Oghma aid you in your studies.~
DO ~EscapeArea()~ EXIT

CHAIN BFSCR BFSCR2
~I'm to depart for Beregost soon, bearing copies commissioned by Lord Travenhurst, but the scribe Gazz - who completed one of the volumes - is nowhere to be found.~
== BFSCR ~I procured the book from his chamber, but there was no sign of the man himself, and none I've asked have seen him.~ 
END
++ ~He's likely tucked away in some corner with another book.~ EXTERN BFSCR BFSCR3
++ ~I don't have time to listen to your problems.~ EXTERN BFSCR BFSCREXIT3

CHAIN BFSCR BFSCR3
~A fair guess though my unease lingers. I cannot spare the time to look for him, however, since these books won't deliver themselves.~
END
++ ~Gorion and I are leaving Candlekeep. Perhaps I can deliver them for you?~ EXTERN BFSCR BFSCR4
++ ~They certainly won't. Stop worrying, Gazz will turn up eventually.~ EXTERN BFSCR BFSCREXIT2

CHAIN BFSCR BFSCR4
~An unusual proposition. The Avowed entrust such tasks only to our own, but you are Gorion's ward, and I trust you to keep your word.~
== BFSCR ~Very well, here is my satchel. All three books are safely stashed within. Deliver them to Travenhurst Manor at your earliest convenience.~
== BFSCR ~The satchel is yours to keep as early payment. May it may serve you well during your travels.~ 
== BFSCR ~Now...where could Gazz be?~
DO ~AddJournalEntry(@1, QUEST) EscapeArea()~ EXIT
