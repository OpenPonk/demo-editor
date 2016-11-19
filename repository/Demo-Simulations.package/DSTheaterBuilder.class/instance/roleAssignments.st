accessing
roleAssignments
	^ roleAssignments ifNil: [ self automaticRoleAssignmentsFor: model ]