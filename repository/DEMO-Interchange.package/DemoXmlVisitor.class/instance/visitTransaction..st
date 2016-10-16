visiting
visitTransaction: anElement
	elements
		at: (self uuidFor: anElement)
		put: [ | transaction |
			transaction := DemoTransactionKind new
				uuid: (self uuidFor: anElement);
				name: (anElement stringAt: #Label);
				demoId: (self demoIdFor: anElement).
			model add: transaction.
			unresolved
				add: [ transaction executor: (self elementAt: (anElement uuidAt: #ExecActorRoleId)) ] ]