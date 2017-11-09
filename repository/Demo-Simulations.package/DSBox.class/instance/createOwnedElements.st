creating - subelements
createOwnedElements
	| before after |
	before := #(rq pr).
	after := #(ex st ac).
	label := RTStyledLabel new
		bold;
		color: Color black;
		elementOn: self model model name.
	self add: label.
	(RTConstraint on: label background: self)
		left;
		padding: 40 * 2 + 10;
		stick.
	self createButtons