as yet unclassified
simulateModel
	<script>
	| modelXml theater w |
	DemoFormetisAPI default isAuthenticated
		ifFalse: [ DemoLoginUI open ].
	DemoFormetisAPI default isAuthenticated
		ifFalse: [ ^ self ].
	DemoModelPickerWizard
		openPickerWith: [ :version | modelXml := DemoFormetisAPI default retrieveModelVersionFor: version ].
	modelXml ifNil: [ ^ self ].
	theater := DSTheaterBuilder new
		modelFromString: modelXml prettyPrinted;
		build.
	theater enableControl.
	theater view canvas camera scale: 0.7.
	theater view @ RTEmptyViewContextInteraction @ RTDraggableView.
	w := theater play.
	w extent: 800 @ 800