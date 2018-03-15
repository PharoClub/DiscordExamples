as yet unclassified
timeItAndNotify: aBlock
	"Executes a block and sends a notification to Discord with the returned value and execution time"
	
	| time res message |
	
	time := [ res := aBlock value ] timeToRun.
	message := self notificationAboutResult: res andTime: time.
	self sendMessage: message.