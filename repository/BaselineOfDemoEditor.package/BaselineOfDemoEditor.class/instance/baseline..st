baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do:
			[ spec
				baseline: 'DynaCASE'
				with: [ spec repository: 'github://dynacase/dynacase/repository' ].
			spec package: 'DynaCASE-DEMO-Model' with: [ spec requires: #('DynaCASE') ].
			spec package: 'DynaCASE-DEMO' with: [ spec requires: #('DynaCASE-DEMO-Model') ].
			spec group: 'default' with: #('DynaCASE-DEMO') ]
