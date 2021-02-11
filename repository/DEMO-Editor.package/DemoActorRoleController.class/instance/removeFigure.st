private
removeFigure
	super removeFigure.
	"idLabel view
		ifNotNil: [ 
			idLabel remove.
			idLabel := nil ]."
	nameLabel view
		ifNotNil: [ 
			nameLabel remove.
			nameLabel := nil ]