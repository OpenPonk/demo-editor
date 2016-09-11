accessing - icons
acceptIcon
	"Private - Generated method"
	^ self icons
		at: #acceptIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self acceptIconContents readStream) ]