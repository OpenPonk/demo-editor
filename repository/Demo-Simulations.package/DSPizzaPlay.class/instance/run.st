as yet unclassified
run
	| b |
	self wait.
	v add: martin.
	rCustomer label
		model: 'Customer';
		update.
	martin moveToSpot: tCom initiatorSpot.
	self wait.
	v add: robert.
	rCompleter label
		model: 'Cashier';
		update.
	robert moveToSpot: tCom executorSpot.
	self wait.
	f unblurTransaction: tCom.
	self wait.
	box1 buttons first hover.
	b := f leftActor: martin says: 'One pepperoni pizza please!'.
	self waitText.
	b remove.
	box1 buttons first completed.
	f unblurTransaction: tPay.
	self wait.
	box1 buttons second hover.
	b := f rightActor: robert says: 'Ok! Please wait a moment.'.
	self waitText.
	box1 buttons second completed.
	b remove.
	martin moveToSpot: tPay executorSpot.
	robert moveToSpot: tPay initiatorSpot.
	self wait.
	box2 buttons first hover.
	b := f rightActor: robert says: 'That will be €15.'.
	self waitText.
	b remove.
	box2 buttons first completed.
	self wait.
	box2 buttons second hover.
	b := f leftActor: martin says: 'Sure, let me get my wallet.'.
	self waitText.
	b remove.
	box2 buttons second completed.
	v add: marek.
	rBaker label
		model: 'Baker';
		update.
	marek moveToSpot: tBake executorSpot.
	f unblurTransaction: tBake.
	self wait.
	robert moveToSpot: tBake initiatorSpot.
	self wait.
	box3 buttons first hover.
	b := f leftActor: robert says: 'Hey Marek, one pepperoni pizza'.
	self waitText.
	b remove.
	box3 buttons first completed.
	self wait.
	box3 buttons second hover.
	b := f rightActor: marek says: 'Sure thing!'.
	self waitText.
	b remove.
	box3 buttons second completed.
	self wait.
	box2 buttons third hover.
	self wait.
	box2 buttons third completed.
	robert moveToSpot: tPay initiatorSpot.
	self wait.
	box2 buttons fourth hover.
	b := f leftActor: martin says: 'Here''s your money.'.
	self waitText.
	b remove.
	box2 buttons fourth completed.
	self wait.
	box2 buttons fifth hover.
	b := f rightActor: robert says: 'Thanks!'.
	self waitText.
	b remove.
	box2 buttons fifth completed.
	box3 buttons third hover.
	self wait.
	box3 buttons third completed.
	self wait.
	robert moveToSpot: tBake initiatorSpot.
	self wait.
	b := f rightActor: marek says: 'One pepperoni pizza ready!'.
	box3 buttons fourth hover.
	self waitText.
	b remove.
	box3 buttons fourth completed.
	self wait.
	box3 buttons fifth hover.
	b := f leftActor: robert says: 'Thanks!'.
	self waitText.
	box3 buttons fifth completed.
	b remove.
	self wait.
	robert moveToSpot: tCom executorSpot.
	martin moveToSpot: tCom initiatorSpot.
	self wait.
	box1 buttons third hover.
	self wait.
	box1 buttons third completed.
	self wait.
	box1 buttons fourth hover.
	b := f rightActor: robert says: 'Here''s your pizza, sir.'.
	self waitText.
	b remove.
	box1 buttons fourth completed.
	self wait.
	box1 buttons fifth hover.
	b := f leftActor: martin says: 'Thanks, have a nice day!'.
	self waitText.
	b remove.
	box1 buttons fifth completed.