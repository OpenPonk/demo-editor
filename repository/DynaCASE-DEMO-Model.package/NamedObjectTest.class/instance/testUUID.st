tests-accessing
testUUID
	| element1 element2 set |
	
	element1 := DEMOBasicElement new.
	element2 := DEMOBasicElement new.
	self assert: (element1 = element2) equals: false.
	
	set := Set new.
	set add: element1.
	set add: element2.
	self assert: set size equals: 2