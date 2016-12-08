world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'DEMO Simulation')
		icon: DCIcons current dynacaseIcon;
		parent: #MostUsedTools;
		withSeparatorAfter;
		action: [ self open ]