as yet unclassified
openPickerWith: aCompleteBlock
	<script>
	| api models versions versionsBlock |
	api := DemoFormetisAPI default.
	models := api retrieveModels.
	versions := Dictionary new.
	versionsBlock := [ :model | versions at: model ifAbsentPut: [ api retrieveModelVersionsFor: model ] ].
	DemoModelPickerWizard new
		models: models;
		versionsBlock: versionsBlock;
		whenComplete: aCompleteBlock;
		open