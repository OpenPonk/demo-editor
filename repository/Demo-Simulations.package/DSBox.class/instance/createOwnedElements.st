as yet unclassified
createOwnedElements
	| before after |
	before := #(rq pr).
	after := #(ex st ac).
	label := RTText new
		color: Color black;
		elementOn: self model.
	self add: label.
	(RTConstraint movable: self fix: label)
		left;
		padding: 40 * 2 + 10;
		stick.
	self createButtons