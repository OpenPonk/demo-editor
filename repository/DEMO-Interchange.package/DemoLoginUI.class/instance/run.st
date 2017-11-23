running
run
	| ui layout window api token |
	ui := DynamicComposableModel new.
	ui
		instantiateModels:
			#(loginLabel LabelModel login TextInputFieldModel passwordLabel LabelModel password TextInputFieldModel confirm ButtonModel).
	ui loginLabel label: 'Login'.
	ui passwordLabel label: 'Password'.
	ui confirm label: 'Login'.
	ui password encrypted: true.
	ui title: 'Login to Formetis API'.
	layout := SpecColumnLayout composed
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
		newRow: [ :r | r add: #confirm ].
	window := ui openWithSpecLayout: layout.
	ui confirm
		action: [ ui login text ifEmpty: [ UIManager default alert: 'Missing login.' ].
			ui password text ifEmpty: [ UIManager default alert: 'Missing password.' ].
			api := DemoFormetisAPI default.
			token := api authenticateUser: 'uhnakpet@fit.cvut.cz' password: 'wrong pass'.
			token isError
				ifTrue: [ UIManager default abort: token errorDescription title: 'Authentication failure' ] ]