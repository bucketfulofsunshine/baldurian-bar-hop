BEGIN BFILLI

CHAIN IF ~Global("BFILLICONVO","GLOBAL",0)~ THEN BFILLI bf.illiintro
~I sense the minds of newcomers. Fragile. Tantalizing. So exquisitely unguarded.~
DO ~SetGlobal("BFILLICONVO","GLOBAL",1)~
== BFILLI ~Will they serve as vessels, I wonder? Or merely as...entertainment?~
END
++ ~I have no interest in becoming anyone's supper.~ EXTERN BFILLI bf.illilaughs1
+ ~NumInPartyGT(1)~ + ~Everyone. Very slowly. Inch back towards the door.~ EXTERN BFILLI bf.illilaughs2
++ ~State your business, creature. Quickly.~ EXTERN BFILLI bf.illinotamused
++ ~I'm not afraid of you. Let's see how you fare without your tentacles.~ EXTERN BFILLI bf.illinotamused
+ ~CheckStatGT(Player1,14,INT)~ + ~An illithid in the middle of Baldur's Gate? I find that rather difficult to believe. Who are you, really?~ EXTERN BFILLI bf.illisaw
+ ~CheckStatGT(Player1,14,WIS)~ + ~Your tentacles aren't moving. And your eyes are made of...glass. So who's behind the mask?~ EXTERN BFILLI bf.illisaw
+ ~Class(Player1,BARD_ALL)~ + ~I came for the wine. Ceremorphosis was not advertised.~ EXTERN BFILLI bf.illilaughs3

CHAIN BFILLI bf.illilaughs1
~Supper? You flatter yourself. My tastes are considerably more discerning.~
END
IF ~~ EXTERN BFILLI bf.illireveal

CHAIN BFILLI bf.illilaughs2
~A coordinated retreat. Sensible. I do so admire disciplined minds.~
END
IF ~~ EXTERN BFILLI bf.illireveal

CHAIN BFILLI bf.illilaughs3
~Then I trust the Amnian vintage will prove compensation enough.~
END
IF ~~ EXTERN BFILLI bf.illireveal

CHAIN BFILLI bf.illinotamused
~Violence already? How disappointing. The evening has scarcely begun.~
END
IF ~~ EXTERN BFILLI bf.illireveal

CHAIN BFILLI bf.illisaw
~Observant. My other guests took considerably longer to see through my guise.~
END
IF ~~ EXTERN BFILLI bf.illireveal2

CHAIN BFILLI bf.illireveal2
~Lord Dorian Thorne, at your service. This costume represents three months of labour, four bolts of indigo silk, and the strained genius of one very patient costumer.~
END
IF ~~ EXTERN BFILLI bf.illipitch

CHAIN BFILLI bf.illireveal
~Can you imagine? A mind flayer in Baldur's Gate! Utterly preposterous. The Flaming Fist would have me skewered before I finished my first course.~
== BFILLI ~No, no, my friend. Lord Dorian Thorne, at your service. This costume represents three months of labour, four bolts of indigo silk, and the strained genius of one very patient costumer.~
END
++ ~The tentacles are very convincing.~ EXTERN BFILLI bf.illipleased
++ ~Your servant called me here for a reason. Get on with it.~ EXTERN BFILLI bf.illipitch
+ ~Class(Player1,BARD_ALL)~ + ~Your mannerisms sold it. You've clearly studied your subject.~ EXTERN BFILLI bf.illivain

CHAIN BFILLI bf.illipleased
~And therein lies the highest compliment one can pay me this evening!~
END
IF ~~ EXTERN BFILLI bf.illipitch

CHAIN BFILLI bf.illivain
~I confess, I have been practicing for weeks. Illithid carry themselves with a certain languor...as though all things are beneath their notice. Present company not excepted.~
END
IF ~~ EXTERN BFILLI bf.illipitch

CHAIN BFILLI bf.illipitch
~I am pleased that my servant found you amenable to conversation. I require your assistance as I am hosting a masquerade: Dress to Distress. Each of my guests has arrived as some manner of beast or fiend.~
== BFILLI ~Ordinarily, I would judge these proceedings myself. But I am, alas, a participant. It seems improper to favour my own performance. So I thought: who better to judge our disguises than one who has faced the real monster? You have seen these creatures. You have fought them. You know what is true...and what is mere theatre.~
END
++ ~What exactly am I judging everyone on?~ EXTERN BFILLI bf.illicriteria
++ ~This is the strangest party I've ever stumbled upon.~ EXTERN BFILLI bf.illicharmed
++ ~Very well. I will serve as your judge.~ EXTERN BFILLI bf.illiaccept
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + ~These creatures deserve better than to be made a mockery of.~ EXTERN BFILLI bf.illidefended
++ ~I have no interest in judging your contest.~ EXTERN BFILLI bf.illirefuse

CHAIN BFILLI bf.illicriteria
~Two measures. First: the craftsmanship of the costume itself. Materials, detail, execution. Second, and most importantly, the performance itself. Manner, movement, even speech where it applies.~
== BFILLI ~I confess, I hold the latter in higher regard. Anyone with sufficient coin may commission fine silk. It takes rather more dedication to convince someone that they are in genuine peril. But that is what separates a memorable evening from a merely expensive one.~
END
IF ~~ EXTERN BFILLI bf.illiaccept

CHAIN BFILLI bf.illidefended
~My guests have approached their subjects with considerable enthusiasm. Imitation, after all, is the highest form of flattery. Should you find any performance lacking, you are free to judge it accordingly.~
END
IF ~~ EXTERN BFILLI bf.illiaccept

CHAIN BFILLI bf.illicharmed
~And the finest you are likely to attend this season, I assure you.~
END
IF ~~ EXTERN BFILLI bf.illiaccept

CHAIN BFILLI bf.illirefuse
~A pity. I hoped you might bring a certain...authenticity to the proceedings. Enjoy the wine.~
EXIT

CHAIN BFILLI bf.illiaccept
~You'll find the other contestants scattered about. I shall endeavour to behave as though the outcome is entirely beneath my notice.~
DO ~AddJournalEntry(@9010, QUEST)~ EXIT
