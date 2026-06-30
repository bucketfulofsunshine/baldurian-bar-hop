BEGIN BFSPID

/* druid or ranger branch, assuming they use something like animal speak */ 
CHAIN IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL) Global("BFSPIDCONVO","GLOBAL",0)~ THEN BFSPID bf.spidintrospeak
~I. Wasn't. Going. To. Eat. The. Whole. Thing.~
DO ~SetGlobal("BFSPIDCONVO","GLOBAL",1)~
== BFSPID ~It tasted better than it looked.~
== BFSPID ~...Wait. You can understand me?~
END
++ ~I can. Are you well?~ EXTERN BFSPID bf.spidwell
++ ~The Kobold appears to be greatly concerned for you.~ EXTERN BFSPID bf.spidtheoconcern
++ ~Open your mouth and spit that out!~ EXTERN BFSPID bf.spidspititout
++ ~What exactly happened with that spider leg?~ EXTERN BFSPID bf.spidwhat

CHAIN BFSPID bf.spidwell
~Apart from being stuffed into this thing? Yes.~
END
IF ~~ EXTERN BFSPID bf.spidhub

CHAIN BFSPID bf.spidtheoconcern
~Theo always worries when I eat interesting things.~
END
IF ~~ EXTERN BFSPID bf.spidhub

CHAIN BFSPID bf.spidspititout
~...Do I have to? It isn't stuck.~
END
IF ~~ EXTERN BFSPID bf.spidhub

CHAIN BFSPID bf.spidwhat
~It was attached. Then it moved.~
== BFSPID ~So I helped it stop moving.~
END
IF ~~ EXTERN BFSPID bf.spidhub

CHAIN BFSPID bf.spidhub
~You have questions. I can smell them.~
END
++ ~Did you choose this costume?~ EXTERN BFSPID bf.spidchoice
++ ~What's your name?~ EXTERN BFSPID bf.spidname
++ ~I think I've heard enough.~ EXTERN BFSPID bf.spidbye

CHAIN BFSPID bf.spidchoice
~No. Theo brought it. Said it was important.~
== BFSPID ~He was very excited. There was lots of paper. Lots of pointing.~
== BFSPID ~I wagged my tail while he talked. That seemed to please him.~
END
IF ~~ EXTERN BFSPID bf.spidbye

CHAIN BFSPID bf.spidname
~Snoutlord.~
== BFSPID ~That is what my owners call me when they are serious.~
== BFSPID ~Otherwise they yell 'no' or 'leave it.'~
END
IF ~~ EXTERN BFSPID bf.spidbye

CHAIN BFSPID bf.spidbye
~Thank you. For listening. Most people just say good dog and move on.~
EXIT

CHAIN IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL) Global("BFSPIDCONVO","GLOBAL",1)~ THEN BFSPID bf.spidintrospeak2
~...~
EXIT

/* every other class */ 
CHAIN IF ~Global("BFSPIDCONVO","GLOBAL",0)~ THEN BFSPID bf.spidintronormal
~*woof*~
DO ~SetGlobal("BFSPIDCONVO","GLOBAL",1)~
== BFKOB ~That's Snoutlord. He's my dog.~
END
++ ~He appears to be eating his own leg.~ EXTERN BFSPID bf.spidtheoeating
++ ~That is a very convincing spider.~ EXTERN BFSPID bf.spidtheoconvincing
++ ~I see.~ EXTERN BFSPID bf.spidtheodone

CHAIN BFSPID bf.spidtheoeating
~*bark*~
== BFKOB ~I know. I keep telling him to stop. He has eaten three legs already.~
== BFKOB ~Snoutlord, no! We talked about this!~
END
IF ~~ EXTERN BFSPID bf.spidtheodone

CHAIN BFSPID bf.spidtheoconvincing
~*bark*~
== BFKOB ~He...is? Huh?~
== BFKOB ~Snoutlord, no! We talked about this!~
END
IF ~~ EXTERN BFSPID bf.spidtheodone

CHAIN BFSPID bf.spidtheodone
~*woof*~
EXIT

CHAIN IF ~Global("BFSPIDCONVO","GLOBAL",1)~ THEN BFSPID bf.spidintronormal1
~*woof*~
EXIT
