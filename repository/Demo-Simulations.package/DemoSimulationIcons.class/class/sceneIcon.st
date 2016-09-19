accessing - icons
sceneIcon
	"Private - Generated method"
	^ self icons
		at: #sceneIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self sceneIconContents readStream) ]