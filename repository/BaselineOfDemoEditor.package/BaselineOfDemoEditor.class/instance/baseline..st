baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'NeoCSV'
				with: [ spec repository: 'github://svenvc/NeoCSV:v15/repository' ].
			spec
				baseline: 'XMLParser'
				with: [ spec
						repository: 'github://pharo-contributions/XML-XMLParser:3.5.x/src' ].
			spec
				baseline: 'XMLDOMVisitor'
				with: [ spec repository: 'github://OpenPonk/xml-dom-visitor/repository' ].
			spec
				baseline: 'OpenPonk'
				with: [ spec repository: 'github://openponk/openponk/repository' ].
			spec
				baseline: 'OpenPonkModel'
				with: [ spec repository: 'github://OpenPonk/openponk-model/repository' ].
			spec
				package: 'DynaCASE-DEMO-Model'
					with: [ spec requires: #('OpenPonkModel') ];
				package: 'DynaCASE-DEMO'
					with: [ spec requires: #('OpenPonk' 'DynaCASE-DEMO-Model') ];
				package: 'DEMO-Model' with: [  ];
				package: 'DEMO-Editor'
					with: [ spec requires: #('OpenPonk' 'DEMO-Model') ];
				package: 'DEMO-Interchange'
					with: [ spec requires: #('DEMO-Model' 'XMLDOMVisitor' 'XMLParser') ];
				package: 'Demo-Simulations'
					with: [ spec requires: #('DEMO-Model' 'DEMO-Interchange' 'NeoCSV') ].
			spec
				group: 'default'
				with: #('DynaCASE-DEMO' 'DEMO-Editor' 'Demo-Simulations') ]