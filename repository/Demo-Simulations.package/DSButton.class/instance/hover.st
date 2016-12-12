actions
hover
	self shape form: self hoverIcon.
	self
		update;
		signalUpdate.
	self announce: (DSHover button: self)