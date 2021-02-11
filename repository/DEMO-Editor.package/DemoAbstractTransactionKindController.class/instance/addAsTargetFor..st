adding
addAsTargetFor: aController
	aController targetController: self.
	"aController attachTo: self diagramController"
	aController createModelIn: model andShowInDiagram: aController 