baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec baseline: 'OpenPonk' with: [ spec repository: 'github://openponk/openponk/repository' ].
			spec
				project: 'NeoCSV'
				with: [ spec
						className: #ConfigurationOfNeoCSV;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/' ].
			spec
				project: 'XMLParser'
				with: [ spec
						className: #ConfigurationOfXMLParser;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main/' ].
			spec
				baseline: 'XMLDOMVisitor'
				with: [ spec repository: 'github://peteruhnak/xml-dom-visitor/repository' ].
			spec
				package: 'OpenPonk-DEMO-Model' with: [ spec requires: #('OpenPonk') ];
				package: 'OpenPonk-DEMO' with: [ spec requires: #('OpenPonk-DEMO-Model') ];
				package: 'DEMO-Model' with: [  ];
				package: 'DEMO-Editor' with: [ spec requires: #('OpenPonk' 'DEMO-Model') ];
				package: 'DEMO-Interchange' with: [ spec requires: #('DEMO-Model' 'XMLDOMVisitor' 'XMLParser') ];
				package: 'Demo-Simulations' with: [ spec requires: #('DEMO-Model' 'DEMO-Interchange' 'NeoCSV') ].
			spec group: 'default' with: #('OpenPonk-DEMO' 'DEMO-Editor' 'Demo-Simulations') ]