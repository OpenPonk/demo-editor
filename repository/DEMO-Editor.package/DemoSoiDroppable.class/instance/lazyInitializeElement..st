initialization
lazyInitializeElement: aSoi
	aSoi announcer when: TRMouseDragEnter send: #dragEnter: to: self.
	aSoi announcer when: TRMouseDragLeave send: #dragLeave: to: self.
	aSoi announcer when: TRMouseDragDrop send: #dragDrop: to: self.
	(aSoi view hasAttribute: self className)
		ifFalse: [ aSoi view attributeAt: self className put: true.
			aSoi view announcer when: TRMouseDragDrop send: #viewDrop: to: self ]