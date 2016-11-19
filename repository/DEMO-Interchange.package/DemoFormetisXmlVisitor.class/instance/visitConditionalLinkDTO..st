visitor
visitConditionalLinkDTO: anElement
	|link|
	link := DemoConditionalLink new.
	model add: link.
	modelObject := link.