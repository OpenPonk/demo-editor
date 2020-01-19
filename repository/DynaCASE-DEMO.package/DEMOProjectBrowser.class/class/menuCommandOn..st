world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #DEMOEditor)
		label: 'DEMO Editor';
		icon: OPIcons current dynacaseIcon;
		order: 25.730;
		with: [ (aBuilder item: #DEMOOCD)
				parent: #DEMOEditor;
				label: 'New DEMO OCD Diagram';
				action: [ (OPProject named: 'DEMO OCD Diagram')
						addModel:
							(DemoOCDModel new
								name: 'DEMO OCD Diagram';
								yourself);
						saveInImage;
						open ].
			(aBuilder item: #DEMOPSD)
				parent: #DEMOEditor;
				label: 'New DEMO PSD Diagram';
				action: [ (OPProject named: 'DEMO PSD Diagram')
						addModel:
							(DemoPSDModel new
								name: 'DEMO PSD Diagram';
								yourself);
						saveInImage;
						open ].
			(aBuilder item: #DEMOTPT)
				parent: #DEMOEditor;
				label: 'New DEMO TPT Diagram';
				action: [ (OPProject named: 'DEMO TPT Diagram')
						addModel:
							(TPTViewModel new
								name: 'DEMO TPT Diagram';
								yourself);
						saveInImage;
						open ] ]