as yet unclassified
initialize
	"DON'T use `super initialize`, because we are trying to late-bind the construction"

	"RTShapedObject>>initialize"

	shape := RTNoShape new.
	trachelShape := TRNoShape instance.
	isFixed := false.
	"RTElement>>initialize"
	self updateEdgesON.
	"RTAbstractMultiElement>>initialize"
	ownedElements := RTGroup new.
	shape := self baseShape.
	trachelShape := shape trachelShapeFor: self.
	"self class>>initialize"
	rendered := false