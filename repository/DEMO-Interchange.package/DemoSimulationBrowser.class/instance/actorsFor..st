accessing
actorsFor: aModel
	^ self storage
		actorsFor: aModel uuid
		ifAbsentPut: [ DSRandomAssignmentGenerator new randomRoleAssignmentsFor: aModel ]