as yet unclassified
buildEditorForm: aForm
	|button|
	super buildEditorForm: aForm.
	(aForm addButton: 'Move up')
		whenActionPerformedDo: [ diagramController model moveTransactionUp: model ].
	button:=(aForm addButton: 'Move down')
		whenActionPerformedDo: [ diagramController model moveTransactionDown: model ]