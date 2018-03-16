protocol
sendResult: aResult andTime: aTime andBlock: aBlock
	"Sends the return value, execution time, and the block of code to Discord using webhook URL"

	| code |
	
	code := '```Smalltalk
', aBlock asString, '
```
:smiley:'. 

	DSWebhookClient new
		url: webhook;
		username: 'DiscordLog';
		avatarUrl: 'https://raw.githubusercontent.com/PharoClub/DiscordExamples/master/img/pharo2-white.png';
		embedTitle: 'Execution Log';
		embedDescription: code;
		embedFieldName: 'Result' value: aResult asString;
		embedFieldName: 'Execution time' value: aTime asString;
		embedColor: Color green;
		send.