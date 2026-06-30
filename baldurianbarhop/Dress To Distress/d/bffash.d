BEGIN BFFASH

CHAIN IF ~Global("BFFASHCONVO","GLOBAL",0)~ THEN BFFASH bf.fashintro
~I trust my costume has not frightened you unduly?~
DO ~SetGlobal("BFFASHCONVO","GLOBAL",1)~
END
++ ~I confess, I don't see a costume.~ EXTERN BFFASH bf.fashnosee
++ ~What exactly are you supposed to be?~ EXTERN BFFASH bf.fashwhat
++ ~You are dressed as a noblewoman.~ EXTERN BFFASH bf.fashobvious
+ ~Class(Player1,BARD_ALL)~ + ~You are wearing last season's cut if I'm not mistaken. Bold choice.~ EXTERN BFFASH bf.fashbard

CHAIN BFFASH bf.fashnosee
~Then you are either exceptionally kind or blissfully ignorant of noble society. I am wearing last season's cut.~
== BFFASH ~The fact that you ask tells me you do not frequent such company. I assure you, I mean that as a compliment.~
END
IF ~~ EXTERN BFFASH bf.fashhub

CHAIN BFFASH bf.fashwhat
~A monster. The most feared creature in any noble drawing room: a woman dressed in last season's cut.~
END
IF ~~ EXTERN BFFASH bf.fashhub

CHAIN BFFASH bf.fashobvious
~You are perceptive. I am a noblewoman dressed in last season's cut, in fabric now considered an affront to civilised society.~
END
IF ~~ EXTERN BFFASH bf.fashhub

CHAIN BFFASH bf.fashbard
~Precisely so. Most of the guests have avoided my gaze, and my company, which I find proves my point.~
END
IF ~~ EXTERN BFFASH bf.fashhub

CHAIN BFFASH bf.fashhub
~You have questions, I imagine. Please, ask.~
END
++ ~Do you truly find last year's fashion monstrous?~ EXTERN BFFASH bf.fashmonstrous
++ ~What exactly are you hoping to prove?~ EXTERN BFFASH bf.fashpoint
++ ~Who are you?~ EXTERN BFFASH bf.fashwho
++ ~Do you expect to win without a suitable costume?~ EXTERN BFFASH bf.fashwin
++ ~I'm ready to give my verdict.~ EXTERN BFFASH bf.fashverdict

CHAIN BFFASH bf.fashmonstrous
~I find it rather freeing, actually. The gown cost a considerable sum when I commissioned it. It is well made, well fitted, and it suits me.~
== BFFASH ~I enjoy beautiful clothing as much as anyone. I simply object to being told when they cease to be beautiful.~
END
IF ~~ EXTERN BFFASH bf.fashhub

CHAIN BFFASH bf.fashpoint
~That the standards by which we judge one another are largely invented, frequently absurd, and enforced with a cruelty entirely disproportionate to the stakes involved.~
END
IF ~~ EXTERN BFFASH bf.fashhub

CHAIN BFFASH bf.fashwho
~Lady Seraphina Aldmere. I fund three scholarships at the Provoss Academy, and according to Lady Provoss, I am single-handedly destroying the social fabric of Baldur's Gate.~
== BFFASH ~She overstates my influence, but I appreciate the credit.~
END
IF ~~ EXTERN BFFASH bf.fashhub

CHAIN BFFASH bf.fashwin
~I would prefer to start a conversation rather than win a contest. Though the two are not mutually exclusive.~
== BFFASH ~If you find a woman in last year's silk more disturbing than a mind flayer, a vampire, and whatever that child has done to his dog, then I shall consider the evening an educational one, regardless of the outcome.~
END
IF ~~ EXTERN BFFASH bf.fashhub

CHAIN BFFASH bf.fashverdict
~And what is your conclusion?~
END
++ ~You embraced the spirit of the masquerade better than anyone. A monster need not have claws or fangs.~ EXTERN BFFASH bf.fashverdictinsight
++ ~You may not have the most frightening costume here, but you are certainly the most memorable.~ EXTERN BFFASH bf.fashverdictmemorable
++ ~You are not in costume. I cannot judge what simply isn't there.~ EXTERN BFFASH bf.fashverdictbad
+ ~OR(2) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL)~ + ~I have faced actual monsters. I find it difficult to rank a gown alongside them.~ EXTERN BFFASH bf.fashverdictfighter

CHAIN BFFASH bf.fashverdictinsight
~Or tentacles.~
== BFFASH ~I could not ask for a kinder reading of my intentions. Thank you.~
END
IF ~~ EXTERN BFFASH bf.fashbye

CHAIN BFFASH bf.fashverdictmemorable
~Memorable will suffice. Fashion, after all, has always been about making a statement.~
END
IF ~~ EXTERN BFFASH bf.fashbye

CHAIN BFFASH bf.fashverdictbad
~A fair distinction. Judge as you see fit.~
END
IF ~~ EXTERN BFFASH bf.fashbye

CHAIN BFFASH bf.fashverdictfighter
~And yet here you stand: in a room where the greatest perceived threat is my sleeve.~
== BFFASH ~Does that not strike you as worth remarking upon?~
END
IF ~~ EXTERN BFFASH bf.fashbye

CHAIN BFFASH bf.fashbye
~Enjoy the rest of the masquerade.~
EXIT

CHAIN IF ~True()~ THEN BFFASH bf.fashstring
~Fashion changes. Good conversation endures.~
EXIT
