as yet unclassified
attachFigure
	"add figure to the view"

	| newFigure |
	newFigure := self figure.
	newFigure view ifNil: [ newFigure renderIn: self diagramController view ].
	self diagramController figureAdded: newFigure.
	newFigure addCallback: (TRTranslationCallback block: [:shape :step | self moved]).
	self refreshFigure