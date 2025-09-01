BEGIN BFTRAV

EXTEND_BOTTOM NOBL10 0
+ ~Global("BFFULLYBOOKED","GLOBAL",1) PartyHasItem("BFSCB")~ + ~I've brought the books you commissioned from Candlekeep.~ DO ~SetGlobal("BFFULLYBOOKED","GLOBAL",2) ~ + BFPLOTTWIST
END

EXTEND_BOTTOM NOBL10 4
+ ~Global("BFFULLYBOOKED","GLOBAL",1) PartyHasItem("BFSCB")~ + ~I've brought the books you commissioned from Candlekeep.~ DO ~SetGlobal("BFFULLYBOOKED","GLOBAL",2) ~ + BFPLOTTWIST
END

EXTEND_BOTTOM NOBL10 5
+ ~Global("BFFULLYBOOKED","GLOBAL",1) PartyHasItem("BFSCB")~ + ~I've brought the books you commissioned from Candlekeep.~ DO ~SetGlobal("BFFULLYBOOKED","GLOBAL",2) ~ + BFPLOTTWIST
END

CHAIN NOBL10 BFPLOTTWIST
~Splendid! Allow me to ascertain the quality of these copies. Not that the scribes at Candlekeep have disappointed before.~
== NOBL10 ~The first book, a treatise on merchant tariffs, indispensable if rather soporific. Everything seems in order. The second... Excellent penmanship, I dare say. A history of the noble families of Amn. Best to know these details when dealing with them, I find.~
== NOBL10 ~Now, the third, aha! The third! Flight of the Fairy Dragons! I read it to tatters as a boy. It is a rare book indeed. Most copies were destroyed when Amn's council declared such 'magical drivel' corrupting.~
END
++ ~It sounds like my kind of story!~ EXTERN NOBL10 BFPICTURE
++ ~A children's book? Not what I expected.~ EXTERN NOBL10 BFPICTURE
++ ~This must be worth a small fortune then.~ EXTERN NOBL10 BFPICTURE
++ ~Three books, three sighs of boredom. Are we done?~ EXTERN NOBL10 BFPICTURE

CHAIN NOBL10 BFPICTURE
~I cannot resist sharing. Take the book. Yes, carefully. Flip to page seventy-three.~
== NOBL10 ~Admire the fine detail of the illustration. Our heroes, stepping into an autumn forest, surrounded by friends and danger alike. I still recall the verse by heart...~
== NOBL10 ~Through amber leaves the children stray,
Where fairy dragons flit and play...~
DO ~AddExperienceParty(100) AddJournalEntry(@9002, QUEST_DONE) ClearAllActions() StartCutSceneMode() StartCutScene("BFPTC")~ EXIT
