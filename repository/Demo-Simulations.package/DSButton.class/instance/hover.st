as yet unclassified
hover
	self shape form: self hoverIcon.
	self
		update;
		signalUpdate.
	self announce: DSHover new