protocol
sendMessage: aMessage
	"Sends message to discord channel"

	DSWebhookClient new
		url: webhookUrl;
		message: aMessage;
		send.