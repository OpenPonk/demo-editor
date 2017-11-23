world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Pizza Simulation')
		icon: OPIcons current dynacaseIcon;
		order: 1;
		parent: #'DEMO Simulation';
		withSeparatorAfter;
		action: [ self open ]