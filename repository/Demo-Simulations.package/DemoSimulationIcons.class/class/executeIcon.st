accessing - icons
executeIcon
	"Private - Generated method"
	^ self icons
		at: #executeIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self executeIconContents readStream) ]