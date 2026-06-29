BEGIN BFVAMP

CHAIN IF ~Global("BFVAMPCONVO","GLOBAL",0)~ THEN BFVAMP bf.vampintro
~Good evening.~
DO ~SetGlobal("BFVAMPCONVO","GLOBAL",1)~
== BFVAMP ~I am a vampire.~
END
++ ~You are the least convincing vampire I have ever met.~ EXTERN BFVAMP bf.vampinsult
++ ~You don't seem very...vampiric.~ EXTERN BFVAMP bf.vampflat
++ ~Terrifying. Truly.~ EXTERN BFVAMP bf.vampsarcasm
++ ~I am here to judge everyone's costumes. Tell me about yours.~ EXTERN BFVAMP bf.vampjudge
+ ~Class(Player1,BARD_ALL)~ + ~You'll need to act with more intensity than that.~ EXTERN BFVAMP bf.vampcha
+ ~CheckStatGT(Player1,14,CHR)~ + ~Put some feeling into your delivery. You look the part, now you *act* it.~ EXTERN BFVAMP bf.vampcha

CHAIN BFVAMP bf.vampinsult
~Yes. Well. Attending this masquerade was my wife's idea.~
END
IF ~~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vampflat
~I am doing my best.~
END
IF ~~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vampsarcasm
~Thank you, I think.~
END
IF ~~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vampjudge
~There is not much to tell. I have fangs. My cape is missing. I am assured this does not matter.~
END
IF ~~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vampcha
~I had an opening line. Something about eternal night and doomed lovers. It sounded rather foolish when spoken aloud, so I left it unsaid.~
END
IF ~~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vamphub
~Is there anything else you require?~
END
++ ~Who are you supposed to be?~ EXTERN BFVAMP bf.vampwho
++ ~Why choose to dress as a vampire?~ EXTERN BFVAMP bf.vampwhy
++ ~Surely you have a better opening line? Say it.~ EXTERN BFVAMP bf.vampact
++ ~I'm ready to give my verdict.~ EXTERN BFVAMP bf.vampverdict

CHAIN BFVAMP bf.vampwho
~Count Vane the Undying.~
== BFVAMP ~I refuse to elaborate beyond that.~
END
IF ~~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vampwhy
~My wife suggested it. She claimed the cape would suit me. Its absence has been inconvenient.~
END
IF ~~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vampact
~You truly want to hear it?~
END
++ ~I truly want to hear it.~ EXTERN BFVAMP bf.vampact2
++ ~I truly, deeply want to hear it.~ EXTERN BFVAMP bf.vampact2
++ ~More than I have ever wanted anything.~ EXTERN BFVAMP bf.vampact2
++ ~Nevermind.~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vampact2
~The night is my dominion. The darkness my inheritance.
I have stalked these shadows 'ere your grandfather drew his first breath.
And I shall walk them long after your grandchildren are dust.~
== BFVAMP ~My existence is a lonely one. I am cursed to live without my eternal love.~
END
++ ~That wasn't as bad as I expected. Repeat your lines as though you mean it.~ EXTERN BFVAMP bf.vampcoax1
++ ~You're right. That was terrible.~ EXTERN BFVAMP bf.vampbadtaste

CHAIN BFVAMP bf.vampbadtaste
~You were forewarned.~
END
IF ~~ EXTERN BFVAMP bf.vamphub

CHAIN BFVAMP bf.vampcoax1
~As though I mean it.~
END
++ ~You are not a man at a party, you are a predator who has lived a thousand years.~ EXTERN BFVAMP bf.vampcoax2
++ ~Close your eyes. You've just entered a room. Every person within it is beneath you. Now open them.~ EXTERN BFVAMP bf.vampcoax2
++ ~Stop thinking about your missing cape. Start making me believe the rest.~ EXTERN BFVAMP bf.vampcoax2

CHAIN BFVAMP bf.vampcoax2
~I believe I understand your intent. Give me a moment.~
END
IF ~~ EXTERN BFVAMP bf.vampcoax3

CHAIN BFVAMP bf.vampcoax3
~I am Count Vane the Undying. Collector of fine wines and, apparently, imported silk.~
== BFVAMP ~I was born in darkness and I shall die in...no. No, I shan't die at all. That is rather the point.~
END
++ ~Keep going.~ EXTERN BFVAMP bf.vampawakehub
++ ~This was a mistake.~ EXTERN BFVAMP bf.vampbadtaste

CHAIN BFVAMP bf.vampawakehub
~How dare you approach me, feeble mortal?~
DO ~SetGlobal("BFVAMPCOAXED","GLOBAL",1)~
END
++ ~Do you enjoy these gatherings?~ EXTERN BFVAMP bf.vampawakeparty
++ ~Tell me about your wife. What does she make of you, Count Vane?~ EXTERN BFVAMP bf.vampawakewife
++ ~I'm ready to give my verdict.~ EXTERN BFVAMP bf.vampverdict

CHAIN BFVAMP bf.vampawakeparty
~I find them diverting. In the way that a cat finds a mouse diverting. Everyone here believes themselves to be the most interesting creature in the room.~
== BFVAMP ~They are not.~
END
IF ~~ EXTERN BFVAMP bf.vampawakehub

CHAIN BFVAMP bf.vampawakewife
~She sees through me entirely. She always has. I find it...I find it rather wonderful, if you must know.~
== BFVAMP ~Do not tell her I said that. Else she will be insufferable.~
END
IF ~~ EXTERN BFVAMP bf.vampawakehub

CHAIN BFVAMP bf.vampverdict
~Well?~
END
++ ~You are the finest vampire I have encountered within the Three Kegs Inn.~ EXTERN BFVAMP bf.vampverdictgood
++ ~Honestly? You need more commitment.~ EXTERN BFVAMP bf.vampverdictbad
+ ~Global("BFVAMPCOAXED","GLOBAL",1)~ + ~Count Vane impresses me. Lord Vane bores me.~ EXTERN BFVAMP bf.vampverdictcoaxed

CHAIN BFVAMP bf.vampverdictgood
~High praise from someone who has, presumably, faced a genuine vampire.~
END
IF ~~ EXTERN BFVAMP bf.vampbye

CHAIN BFVAMP bf.vampverdictbad
~Yes. Well. You are probably right.~
END
IF ~~ EXTERN BFVAMP bf.vampbye

CHAIN BFVAMP bf.vampverdictcoaxed
~Then I suggest you judge Count Vane. Lord Vane is otherwise indisposed and he shall not be missed.~
END
IF ~~ EXTERN BFVAMP bf.vampbye

CHAIN BFVAMP bf.vampbye
~Good evening.~
EXIT

CHAIN IF ~Global("BFVAMPCOAXED","GLOBAL",0) Global("BFVAMPCONVO","GLOBAL",1)~ THEN BFVAMP bf.vampstring
~Good evening.~
EXIT

CHAIN IF ~Global("BFVAMPCOAXED","GLOBAL",1) Global("BFVAMPCONVO","GLOBAL",1)~ THEN BFVAMP bf.vampstring2
~You again. How delightful. I use that word loosely.~
EXIT
