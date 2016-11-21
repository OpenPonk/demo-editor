instance creation
createWizard
	| wizard pane loginBox passwordBox |
	wizard := WizardControl new.
	pane := WizardSinglePane new.
	pane name: 'Login to Formetis API'.
	loginBox := TextFieldPart new inGroupboxNamed: 'Login'.
	passwordBox := TextFieldPart new inGroupboxNamed: 'Password'.
	pane row: loginBox associatedTo: #login.
	pane row: passwordBox associatedTo: #password.
	pane condition: [ :data | (data at: #login) isNotEmpty ] named: 'missing login'.
	pane condition: [ :data | (data at: #password) isNotEmpty ] named: 'missing password'.
	loginBox textFieldHorizontalSize: 300.
	wizard addPane: pane.
	^wizard