building
buildBrowser
	browser := GLMTabulator new.
	browser title: 'Demo Model Browser'.
	browser
		row: [ :r | 
			r
				column: #enterprises;
				column: #models;
				column: #versions ];
		row: #actions.
	browser transmit
		to: #enterprises;
		andShow: [ :a | 
			a fastList
				title: 'Enterprises';
				display: [ self enterprises ];
				format: [ :each | each at: 'name' ] ].
	browser transmit
		from: #enterprises;
		to: #models;
		andShow: [ :a :b :c | 
			a fastList
				title: 'Models';
				display: [ :enterprise | self modelsForEnterprise: enterprise ];
				format: [ :versions | versions anyOne label ] ].
	browser transmit
		from: #models;
		to: #versions;
		andShow: [ :a | 
			a fastList
				title: 'Versions';
				display: [ :versions | versions sorted: [ :x :y | x version > y version ] ];
				format: [ :version | 'Version ' , version version asString ] ].
	browser transmit
		from: #versions;
		to: #actions;
		andShow: [ :a | 
			a actionList
				act: [ :actionList :version | self openLines: (self modelForVersion: version) ]
					entitled: 'Lines';
				act: [ :actionList :version | self openActors: (self modelForVersion: version) ]
					entitled: 'Actors';
				act: [ :actionList :version | self play: (self modelForVersion: version) ]
					entitled: 'Play' ].
	^ browser