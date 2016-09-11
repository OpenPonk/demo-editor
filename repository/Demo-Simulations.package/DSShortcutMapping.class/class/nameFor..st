utils
nameFor: aShortcut
	^ {#rq -> #request.
	#pm -> #promise.
	#ex -> #execute.
	#st -> #state.
	#ac -> #accept.
	#dc -> #decline.
	#rj -> #reject.
	#rv -> #revoke} asDictionary at: aShortcut