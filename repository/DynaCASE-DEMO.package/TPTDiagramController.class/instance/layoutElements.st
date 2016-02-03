figures
layoutElements
	| tranFigures prodFigures |
	self sortElements.
	tranFigures := trans collect: [ :each | each figure ].
	prodFigures := prods collect: [ :each | each figure ].
	
	transCol unbindNestedElements.
	prodsCol unbindNestedElements.
	tableBox unbindNestedElements.
		
	RTNest new behavior: TPTRTNoBehavior instance; layout: RTVerticalLineLayout new;
		on: transCol nest: tranFigures.
		
	RTNest new behavior: TPTRTNoBehavior instance; layout: RTVerticalLineLayout new;
		on: prodsCol nest: prodFigures.
			
	RTNest new behavior: TPTRTNoBehavior instance; layout: (RTHorizontalLineLayout new gapSize: 0);
		on: tableBox nest: {transCol. prodsCol}.
		
	transCol unbindNestedElements.
	prodsCol unbindNestedElements.
	tableBox unbindNestedElements.
		
	RTNest new behavior: TPTRTNoBehavior instance; layout: RTVerticalLineLayout new;
		on: transCol nest: tranFigures.
		
	RTNest new behavior: TPTRTNoBehavior instance; layout: RTVerticalLineLayout new;
		on: prodsCol nest: prodFigures.
			
	RTNest new behavior: TPTRTNoBehavior instance; layout: (RTHorizontalLineLayout new gapSize: 0);
		on: tableBox nest: {transCol. prodsCol}.
	self view signalUpdate