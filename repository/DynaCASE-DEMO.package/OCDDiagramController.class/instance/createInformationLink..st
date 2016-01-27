as yet unclassified
createInformationLink: aLinkModel
	| linkController sourceCtrl targetCtrl |
	sourceCtrl := self controllerForModelID: aLinkModel source.
	targetCtrl := self controllerForModelID: aLinkModel target.
	linkController := OCDInformationLinkController new.
	linkController diagramController: self.
	linkController source: sourceCtrl.
	linkController target: targetCtrl.
	linkController model: aLinkModel.
	controllers add: linkController.
	linkController attach