initialization
initializeWidgets
	(loginLabel := self newLabel) label: 'Login'.
	(login := self newTextInput) autoAccept: true.
	(passwordLabel := self newLabel) label: 'Password'.
	(password := self newTextInput)
		autoAccept: true;
		encrypted: true.
	(confirmButton := self newButton) label: 'Login'.
	self focusOrder
		add: login;
		add: password;
		add: confirmButton