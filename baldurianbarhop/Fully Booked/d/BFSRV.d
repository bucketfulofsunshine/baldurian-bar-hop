BEGIN BFSRV

CHAIN IF ~True()~ THEN BFSRV BFSERV1
~Hmph. Another sellsword sniffing about where they aren't wanted. Off with you!~
END
+ ~PartyHasItem("BFSCB")~ + ~Actually, I have the books commissioned from Candlekeep.~ EXTERN BFSRV BFSERVQUEST
++ ~And a good <DAYNIGHT> to you too.~ EXTERN BFSRV BFSERVPOLITE
++ ~Careful, servant, that sharp tongue of yours might earn you fewer teeth.~ EXTERN BFSRV BFSERVTHREAT
++ ~I'll trouble you no further.~ EXIT

CHAIN BFSRV BFSERVPOLITE
~Courtesy from a commoner? How novel. Still, you've no reason to linger, unless you've business worth my master's time?~
END
+ ~PartyHasItem("BFSCB")~ + ~I do. These books were commissioned by Lord Travenhurst himself.~ EXTERN BFSRV BFSERVQUEST
++ ~Then I'll be going.~ EXIT

CHAIN BFSRV BFSERVTHREAT
~Regardless, unless you've real business here, you'll find no welcome.~
END
+ ~PartyHasItem("BFSCB")~ + ~I do. These books were commissioned by Lord Travenhurst himself.~ EXTERN BFSRV BFSERVQUEST
++ ~Then I'll be going.~ EXIT

CHAIN BFSRV BFSERVQUEST
~I see you carry the Satchel of the Avowed. Very well, <SIRMAAM>, follow me. Lord Travenhurst will want these delivered at once.~ 
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("BFSRVC") EscapeArea()~ EXIT
