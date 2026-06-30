BEGIN BFUSH

CHAIN IF ~Global("BFUSHCONVO","GLOBAL",0)~ THEN BFUSH bf.usherintro
~You.~
DO ~SetGlobal("BFUSHCONVO","GLOBAL",1)~
== BFUSH ~You are perfect. Exactly what my master needs.~
== BFUSH ~He is hosting a small gathering and requires guests of a particular character. Would you follow me and speak with him?~
END
++ ~Lead the way.~ EXTERN BFUSH bf.usheraccept
++ ~Who is your master?~ EXTERN BFUSH bf.usherwho
++ ~What makes you think I'm suited?~ EXTERN BFUSH bf.usherwhat
++ ~I have no interest in mysterious invitations.~ EXTERN BFUSH bf.usherdecline

CHAIN BFUSH bf.usherwho
~A generous host. You will understand a great deal if you simply follow me.~
END
++ ~Very well. Lead the way.~ EXTERN BFUSH bf.usheraccept
++ ~I'd still like a name.~ EXTERN BFUSH bf.ushernoname
++ ~I have no interest in mysterious invitations.~ EXTERN BFUSH bf.usherdecline

CHAIN BFUSH bf.ushernoname
~It is not mine to give. He prefers his introductions made in person.~
END
++ ~Fine. Take me to him.~ EXTERN BFUSH bf.usheraccept
++ ~I have no interest in mysterious invitations.~ EXTERN BFUSH bf.usherdecline

CHAIN BFUSH bf.usherwhat
~My master has need of a discerning mind. Your experience will prove invaluable.~
END
++ ~Then lead the way.~ EXTERN BFUSH bf.usheraccept
++ ~I have no interest in mysterious invitations.~ EXTERN BFUSH bf.usherdecline

CHAIN BFUSH bf.usheraccept
~Excellent. This way, please. Mind the steps on the way down.~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("BFUSH")~ EXIT

CHAIN BFUSH bf.usherdecline
~A pity. He so rarely takes no for an answer.~
DO ~EscapeArea()~
EXIT
