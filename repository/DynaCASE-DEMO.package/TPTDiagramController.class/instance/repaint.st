figures
repaint
	
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