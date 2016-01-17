as yet unclassified
createInformationLink: aLinkModel
	| linkController sourceCtrl targetCtrl |
	
	sourceCtrl := self controllerForModel: aLinkModel source.
	targetCtrl := self controllerForModel: aLinkModel target.
	linkController := OCDInformationLinkController new.
	linkController diagramController: self.
	linkController source: sourceCtrl.
	linkController target: targetCtrl.
	linkController model: aLinkModel.
	controllers add: linkController.
	linkController attach.
