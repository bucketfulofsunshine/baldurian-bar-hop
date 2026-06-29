BEGIN BFWOLF

CHAIN IF ~Global("BFWOLFCONVO","GLOBAL",0)~ THEN BFWOLF bf.wolfintro
~AWOOOO!~
DO ~SetGlobal("BFWOLFCONVO","GLOBAL",1)~
== BFWOLF ~Are you the judge? You look like a judge.~
END
++ ~Were you just howling at me?~ EXTERN BFWOLF bf.wolfhowl
++ ~I am the judge, yes.~ EXTERN BFWOLF bf.wolfjudge
++ ~My ears may never recover.~ EXTERN BFWOLF bf.wolfears
+ ~Class(Player1,DRUID_ALL)~ + ~That was a poor impression of a werewolf.~ EXTERN BFWOLF bf.wolfdruid

CHAIN BFWOLF bf.wolfhowl
~I was! Werewolves howl. It would have been terribly rude not to.~
END
IF ~~ EXTERN BFWOLF bf.wolfhub

CHAIN BFWOLF bf.wolfjudge
~Wonderful! I am a werewolf. AWOO!~
END
IF ~~ EXTERN BFWOLF bf.wolfhub

CHAIN BFWOLF bf.wolfears
~Oh dear! I'm terribly sorry. Would a quieter howl help?~
== BFWOLF ~awoooo.~
END
IF ~~ EXTERN BFWOLF bf.wolfhub

CHAIN BFWOLF bf.wolfdruid
~Is it? What does an actual werewolf sound like? Can you howl? I would love to hear it.~
END
IF ~~ EXTERN BFWOLF bf.wolfhub

CHAIN BFWOLF bf.wolfhub
~So! Questions? I'm all ears.~
END
++ ~Tell me about your costume.~ EXTERN BFWOLF bf.wolfcostume
++ ~Have you ever actually seen a werewolf?~ EXTERN BFWOLF bf.wolfseen
++ ~Why a werewolf?~ EXTERN BFWOLF bf.wolfwhy
++ ~Who are you when you're not howling at people?~ EXTERN BFWOLF bf.wolfwho
++ ~I'm ready to give my verdict.~ EXTERN BFWOLF bf.wolfverdict

CHAIN BFWOLF bf.wolfcostume
~The fur is real! Well. Real fur. Not werewolf fur, obviously. Though I did ask.~
END
IF ~~ EXTERN BFWOLF bf.wolfhub

CHAIN BFWOLF bf.wolfseen
~No, and that is probably for the best. My cousin claimed he saw one once, just outside Beregost. He swore it was enormous and smelled like wet dog.~
END
IF ~~ EXTERN BFWOLF bf.wolfhub

CHAIN BFWOLF bf.wolfwhy
~I asked my husband what frightened him. He said spiders, which was no help at all. Then I asked my sister. She said debt, which was even less helpful.~
== BFWOLF ~So I settled on something that would frighten me: something enormous that could run me down in the dark.~
== BFWOLF ~A werewolf seemed the obvious choice.~
END
IF ~~ EXTERN BFWOLF bf.wolfhub

CHAIN BFWOLF bf.wolfwho
~Lady Mira Ashcombe. I breed hunting hounds, organise charitable fêtes, and occasionally embarrass my husband in public.~
== BFWOLF ~All of them intentional.~
END
IF ~~ EXTERN BFWOLF bf.wolfhub

CHAIN BFWOLF bf.wolfverdict
~Oh! Is it time? How did I do?~
END
++ ~You are the most convincing werewolf here. Your howl alone was worth attending for.~ EXTERN BFWOLF bf.wolfverdictgood
++ ~A strong showing. Genuine enthusiasm counts a great deal.~ EXTERN BFWOLF bf.wolfverdictneutral
++ ~The costume is impressive but your performance needs work.~ EXTERN BFWOLF bf.wolfverdictbad

CHAIN BFWOLF bf.wolfverdictgood
~Really? That is wonderful to hear!~
END
IF ~~ EXTERN BFWOLF bf.wolfbye

CHAIN BFWOLF bf.wolfverdictneutral
~That, at least, has never been in short supply.~
END
IF ~~ EXTERN BFWOLF bf.wolfbye

CHAIN BFWOLF bf.wolfverdictbad
~The howl?~
END
++ ~Especially the howl.~ EXTERN BFWOLF bf.wolfverdictbadbye
++ ~The howl was fine.~ EXTERN BFWOLF bf.wolfverdictbadbye2

CHAIN BFWOLF bf.wolfverdictbadbye
~My husband says the same thing. I maintain you are both wrong.~
END
IF ~~ EXTERN BFWOLF bf.wolfbye

CHAIN BFWOLF bf.wolfverdictbadbye2
~Well then. I shall work on everything else.~
END
IF ~~ EXTERN BFWOLF bf.wolfbye

CHAIN BFWOLF bf.wolfbye
~This has been a lovely chat. Now I bid you AWOO!~
EXIT

CHAIN IF ~True()~ THEN BFWOLF bf.wolfstring
~AWOO!~
EXIT
