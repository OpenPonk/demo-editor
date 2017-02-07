world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'DEMO Simulation')
		icon: OPIcons current dynacaseIcon;
		parent: #MostUsedTools;
		withSeparatorAfter;
		action: [ self open ]