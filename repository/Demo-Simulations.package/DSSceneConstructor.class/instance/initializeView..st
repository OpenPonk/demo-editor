initialization
initializeView: aView
	aView canvas theme: TRWhiteTheme new.
	aView canvas camera scale: 0.7.
	aView @ RTEmptyViewContextInteraction @ RTDraggableView @ RTZoomableView
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