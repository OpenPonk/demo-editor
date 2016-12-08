baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec baseline: 'DynaCASE' with: [ spec repository: 'github://openponk/openponk/repository' ].
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
				package: 'DynaCASE-DEMO-Model' with: [ spec requires: #('DynaCASE') ];
				package: 'DynaCASE-DEMO' with: [ spec requires: #('DynaCASE-DEMO-Model') ];
				package: 'DEMO-Model' with: [  ];
				package: 'DEMO-Editor' with: [ spec requires: #('DynaCASE' 'DEMO-Model') ];
				package: 'DEMO-Interchange' with: [ spec requires: #('DEMO-Model' 'XMLDOMVisitor' 'XMLParser') ];
				package: 'DEMO-Simulations' with: [ spec requires: #('DEMO-Model' 'DEMO-Interchange' 'NeoCSV') ].
			spec group: 'default' with: #('DynaCASE-DEMO' 'DEMO-Editor' 'DEMO-Simulations') ]