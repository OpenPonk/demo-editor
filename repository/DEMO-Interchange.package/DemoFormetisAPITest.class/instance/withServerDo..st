as yet unclassified
withServerDo: block
	| server |
	"Taken from Zinc-Tests implementation"
	server := ZnServer on: 1700 + 32 atRandom.
	[ server start.
	self
		assert: server isRunning & server isListening
		description: ('Failed to start server on port {1}. Is there one already?' format: {server port}).
	block cull: server ]
		ensure: [ server stop ]