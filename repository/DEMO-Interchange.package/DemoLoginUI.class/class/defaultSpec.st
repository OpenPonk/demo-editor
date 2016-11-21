as yet unclassified
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :r | 
			r
				add: #loginLabel width: 100;
				add: #login ]
			height: 30;
		newRow: [ :r | 
			r
				add: #passwordLabel width: 100;
				add: #password ]
			height: 30;
		newRow: [ :r |  ];
		newRow: [ :r | r add: #confirmButton ];
		yourself