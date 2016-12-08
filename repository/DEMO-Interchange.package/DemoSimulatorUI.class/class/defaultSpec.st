specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :r | 
			r
				add: #modelsList;
				add: #versionsList ]
			height: 200;
		newRow: [ :r |  ] height: 20;
		newRow: [ :r | 
			r
				add: #linesButton;
				newColumn: [ :c |  ] ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				add: #actorsButton;
				newColumn: [ :c |  ] ]
			height: self toolbarHeight;
		newRow: [ :r |  ] height: 50 - self toolbarHeight;
		newRow: [ :r | 
			r
				newColumn: [ :c |  ];
				add: #scriptButton ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				newColumn: [ :c |  ];
				add: #simulationButton ]
			height: self toolbarHeight;
		yourself