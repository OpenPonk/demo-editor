accessing - icons
stateIcon
	"Private - Generated method"
	^ self icons
		at: #stateIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self stateIconContents readStream) ]