tests-accessing
testRelatedLinksWith
	| element informationLink psdLink |
	element := TransactionKind new.
	informationLink := InformationLink new.
	psdLink := ProcessLink new.
	model
		add: element;
		add: informationLink;
		add: psdLink.
	informationLink source: element.
	psdLink
		source: element;
		target: element.
	self
		assertCollection: (model relatedLinksWith: element)
		hasSameElements:
			(OrderedCollection new
				add: informationLink;
				add: psdLink;
				yourself)