tests-accessing
testFormulation
	| result aFormulation |
	
	aFormulation := 'testFormulation'.
	
	productKind formulation: aFormulation .
	result := productKind formulation.
	
	self assert: aFormulation equals: result 