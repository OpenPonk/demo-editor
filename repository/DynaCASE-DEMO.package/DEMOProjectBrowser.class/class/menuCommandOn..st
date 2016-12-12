world menu
menuCommandOn: aBuilder
	<worldMenu>
	"(aBuilder item: #'DynaCASE DEMO')
		icon: DCIcons current dynacaseIcon;
		parent: #MostUsedTools;
		withSeparatorAfter;
		action: [ | project |
			project := DEMOProject named: 'DEMO project'.
			project model: DEMOModel new.
			project open ]"