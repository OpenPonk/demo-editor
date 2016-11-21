as yet unclassified
openPicker
	<script>
	| api models versions versionsBlock completeBlock |
	api := DemoFormetisAPI default.
	models := api retrieveModels.
	versions := Dictionary new.
	versionsBlock := [ :model | versions at: model ifAbsentPut: [ api retrieveModelVersionsFor: model ] ].
	completeBlock := [ :version | 1 halt ].
	DemoModelPickerWizard new
		models: models;
		versionsBlock: versionsBlock;
		whenComplete: completeBlock;
		open