figures
refreshFigure
	
	transCol unbindNestedElements.
	prodsCol unbindNestedElements.
	tableBox unbindNestedElements.
		
	RTNest new behavior: TPTRTNoBehavior instance; layout: RTVerticalLineLayout new;
		on: transCol nest: trans.
		
	RTNest new behavior: TPTRTNoBehavior instance; layout: RTVerticalLineLayout new;
		on: prodsCol nest: prods.
			
	RTNest new behavior: TPTRTNoBehavior instance; layout: (RTHorizontalLineLayout new gapSize: 0);
		on: tableBox nest: {transCol. prodsCol}.
		
	transCol unbindNestedElements.
	prodsCol unbindNestedElements.
	tableBox unbindNestedElements.
		
	RTNest new behavior: TPTRTNoBehavior instance; layout: RTVerticalLineLayout new;
		on: transCol nest: trans.
		
	RTNest new behavior: TPTRTNoBehavior instance; layout: RTVerticalLineLayout new;
		on: prodsCol nest: prods.
			
	RTNest new behavior: TPTRTNoBehavior instance; layout: (RTHorizontalLineLayout new gapSize: 0);
		on: tableBox nest: {transCol. prodsCol}.
		
	self view signalUpdate.
	
"
examplePlacingGroups

	| v g1 g2 |
	v := RTView new.
	g1 := RTGroup new.
	g1 addAll: (RTBox new size: 10; elementsOn:( 1 to: 200)).

	g2 := RTGroup new.
	g2 addAll: ((RTEllipse new size: 15; color: Color red )elementsOn: (RTShape withAllSubclasses)).

	v addAll: g1; addAll: g2.

	RTEdgeBuilder new 
		view: v;
		objects: RTShape withAllSubclasses;
		connectFrom: #superclass to: #yourself.

	RTGridLayout on: g1.
	RTTreeLayout on: g2.

	RTConstraint move: g1 onTheRightOf: g2.
	^ v
"