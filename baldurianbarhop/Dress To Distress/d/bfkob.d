BEGIN BFKOB

CHAIN IF ~Global("BFKOBCONVO","GLOBAL",0)~ THEN BFKOB bf.kobintro
~SSSSKREE! You have entered the territory of Gathrix the Destroyer. All who enter...all who enter...~
DO ~SetGlobal("BFKOBCONVO","GLOBAL",1)~
== BFKOB ~...must cower before me! Yip, yip. That is what I meant to say.~
END
++ ~You are very fearsome. I tremble before you.~ EXTERN BFKOB bf.kobsarcastic
++ ~Well met, Gathrix. I am here to judge your costume.~ EXTERN BFKOB bf.kobjudge
++ ~You recovered well. How many times did you practice that opening?~ EXTERN BFKOB bf.kobpractice
+ ~Class(Player1,BARD_ALL)~ + ~Excellent introduction. Though you lost your thread slightly towards the end.~ EXTERN BFKOB bf.kobbard
++ ~I've killed kobolds before. Quite a few, actually.~ EXTERN BFKOB bf.kobkilled

CHAIN BFKOB bf.kobsarcastic
~I am not finished with my introduction yet! But...thank you. Papa said that trembling is the correct response.~
END
IF ~~ EXTERN BFKOB bf.kobhub

CHAIN BFKOB bf.kobjudge
~I knew you were the judge! Do you have a sword? Judges must always wield swords.~
END
IF ~~ EXTERN BFKOB bf.kobhub

CHAIN BFKOB bf.kobpractice
~Seventeen days. I wanted to say it with my best hissing voice...~
END
IF ~~ EXTERN BFKOB bf.kobhub

CHAIN BFKOB bf.kobbard
~I know, I know. I nearly had it! But then I forgot 'cower' and you were standing there and looking at me.~
== BFKOB ~I will do better next time.~
END
IF ~~ EXTERN BFKOB bf.kobhub

CHAIN BFKOB bf.kobkilled
~...How many?~
END
++ ~Hundreds, probably. I've lost count.~ EXTERN BFKOB bf.kobkillcount
++ ~A few. In self-defence.~ EXTERN BFKOB bf.kobkillselfdefense

CHAIN BFKOB bf.kobkillcount
~Hundreds!~
== BFKOB ~...Gathrix the Destroyer could probably defeat hundreds too. Yip, yip.~
END
IF ~~ EXTERN BFKOB bf.kobhub

CHAIN BFKOB bf.kobkillselfdefense
~Gathrix the Destroyer will not hold it against you.~
END
IF ~~ EXTERN BFKOB bf.kobhub

CHAIN BFKOB bf.kobhub
~You're going to choose a winner, aren't you? Remember: I practiced my hissing!~
END
++ ~Tell me about your costume.~ EXTERN BFKOB bf.kobaboutcost
++ ~Tell me about Gathrix the Destroyer.~ EXTERN BFKOB bf.kobaboutchar
++ ~Why a kobold? Why not something grander?~ EXTERN BFKOB bf.kobwhy
++ ~What's your name? Your real one.~ EXTERN BFKOB bf.kobname
++ ~I think I'm ready to give my verdict.~ EXTERN BFKOB bf.kobverdict

CHAIN BFKOB bf.kobaboutcost
~The scales are painted leather. Real leather, not cloth, because kobold scales are hard.~
== BFKOB ~The tail made walking difficult. It took me four tries to get it right and not fall. But I learned how to move by watching the lizards in our garden.~
END
IF ~~ EXTERN BFKOB bf.kobverdict

CHAIN BFKOB bf.kobaboutchar
~He is the bravest kobold who ever lived. He defeated seven adventurers and a horse. Gathrix has a lair somewhere beneath a mountain and hoards seven hundred and forty-three gold.~
END
IF ~~ EXTERN BFKOB bf.kobverdict

CHAIN BFKOB bf.kobwhy
~Have you ever heard of a kobold hero? I haven't. I think there should be one.~
END
IF ~~ EXTERN BFKOB bf.kobverdict

CHAIN BFKOB bf.kobname
~Lord Theodric Aldous Bramwell Thorne. But only Papa calls me that - and only when I've done something bad. Mama just calls me Theo.~
END
IF ~~ EXTERN BFKOB bf.kobverdict

CHAIN BFKOB bf.kobverdict
~Do you think I might win?~
END
++ ~I think you stand a fine chance.~ EXTERN BFKOB bf.kobwinchance
++ ~I haven't decided yet. I'll declare the winner when everyone can hear the result.~ EXTERN BFKOB bf.kobneutral
++ ~I wouldn't count on it.~ EXTERN BFKOB bf.kobmean

CHAIN BFKOB bf.kobwinchance
~Really? Don't tell Papa yet. I want to see his face when you do.~
END
IF ~~ EXTERN BFKOB bf.kobbye

CHAIN BFKOB bf.kobneutral
~That is a very fair thing to say.~
== BFKOB ~But I practiced being Gathrix for seventeen days. How long did you practice being a judge?~
END
IF ~~ EXTERN BFKOB bf.kobbye

CHAIN BFKOB bf.kobmean
~...~
== BFKOB ~Gathrix the Destroyer has many enemies. He is used to cruelty.~
END
IF ~~ EXTERN BFKOB bf.kobbye

CHAIN BFKOB bf.kobbye
~I have to go check on Snoutlord, my dog. He ate part of his spider leg earlier.~
EXIT

CHAIN IF ~True()~ THEN BFKOB bf.kobstring
~No, Snoutlord, spit it out! Spider legs aren't for eating!~
EXIT
