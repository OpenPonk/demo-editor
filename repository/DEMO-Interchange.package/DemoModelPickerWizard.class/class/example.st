as yet unclassified
example
| api m v versions versionsBlock completeBlock vM json |
api := DemoFormetisAPI default.

m := api retrieveModels.

m first.

v := api retrieveModelVersionsFor: m first.

versions := Dictionary new.

versionsBlock := [ :model |
	versions at: model ifAbsentPut: [ api retrieveModelVersionsFor: model ]
].

completeBlock := [ :version | 1halt ].

vM := api retrieveModelVersionFor: versions values second last.

json := api jsonResponseFor: ('/api/SimulationApi/ModelVersions/', versions values second last id asString).

DemoXmlInterchange readModelVersionStream: (vM root // 'ModelVersion') first prettyPrinted readStream.


DemoModelPickerWizard new
	models: m;
	versionsBlock: versionsBlock;
	whenComplete: completeBlock;
	open.