world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Clear Credentials')
		icon: OPIcons current dynacaseIcon;
		order: 2;
		parent: #'DEMO Simulation';
		withSeparatorAfter;
		action: [ self resetDefault.
			DemoSimulationBrowser clearCache.
			self inform: 'Credentials cleared.' ]