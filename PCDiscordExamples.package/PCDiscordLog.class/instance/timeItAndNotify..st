as yet unclassified
timeItAndNotify: aBlock
	"Executes a block and sends a notification to Discord"
	
	| time res |
	
	time := [ res := aBlock value ] timeToRun.
	self sendResult: res andTime: time andBlock: aBlock.