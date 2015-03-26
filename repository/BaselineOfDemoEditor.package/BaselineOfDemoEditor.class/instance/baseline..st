as yet unclassified
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'DynaCASE' with: [ 
				spec
					repository: 'github://dynacase/dynacase/repository' ].
		spec 
			package: 'Demo-Editor' with: [
				spec requires: #( 'DynaCASE' ). ].
		spec group: 'default' with: #('Demo-Editor' ). ]
