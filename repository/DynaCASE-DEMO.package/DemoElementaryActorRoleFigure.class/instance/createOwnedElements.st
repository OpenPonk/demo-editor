as yet unclassified
createOwnedElements
	| id label |
	id := self figuresFactory newLabel elementOn: #Ai.
	label := self figuresFactory newText elementOn: #' elementary
actor role Ai'.
	self
		add: id;
		add: label.
	self @ self figuresFactory draggable.
	(RTConstraint movable: self fix: id) stick.
	(RTConstraint movable: self fix: label)
		outer;
		bottom;
		stick