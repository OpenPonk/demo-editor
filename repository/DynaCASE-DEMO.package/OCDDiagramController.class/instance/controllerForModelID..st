as yet unclassified
controllerForModelID: anUUID
	^ self controllers detect: [ :controller | controller model uuid = anUUID ]