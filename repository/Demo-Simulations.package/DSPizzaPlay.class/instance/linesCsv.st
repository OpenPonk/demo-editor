as yet unclassified
linesCsv
	"D:\OpenPonk\d4b\pizza-play\lines.csv"
	^ '"roleName","transactionName","actName","line"
Payer,Payment,execute,*searching for cash
Payer,Payment,promise,Let me get my wallet.
Payer,Payment,state,Here''s your money.
Deliverer,Delivery,execute,*delivering*
Deliverer,Delivery,promise,Will do.
Deliverer,Delivery,state,Pizza delivered.
Baker,Baking,execute,*baking*
Baker,Baking,promise,Sure thing.
Baker,Baking,state,One mushroom pizza done!
Completer,Delivery,request,Please give this pizza to the customer.
Completer,Delivery,accept,Thanks.
Completer,Completion,execute,*tasking*
Completer,Completion,promise,Ok! Please wait a moment.
Completer,Completion,state,Here''s your pizza.
Completer,Payment,request,That will be $15.
Completer,Payment,accept,Thanks.
Completer,Baking,request,One mushroom pizza!
Completer,Baking,accept,Thanks!
Orderer,Completion,request,"Hi, I''d like one mushroom pizza please."
Orderer,Completion,accept,Thanks!'