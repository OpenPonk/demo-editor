as yet unclassified
initializeView: aView
	"| b |
	b := RTMenuBuilder new view: aView.
	b
		menu: ''
		submenu: 'Save lines'
		background: Color veryVeryLightGray
		callback: [ DemoSimulationDataStorage default
				linesAt: model uuid
				put: actorLines.
			self inform: 'Lines saved' ]"