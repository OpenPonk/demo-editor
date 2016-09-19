as yet unclassified
unblurTransaction: aTransaction
	(aTransaction attributeAt: #blur) remove.
	aTransaction removeAttributeAt: #blur