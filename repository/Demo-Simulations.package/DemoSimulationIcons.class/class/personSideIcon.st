accessing - icons
personSideIcon
	"Private - Generated method"
	^ self icons
		at: #personSideIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self personSideIconContents readStream) ]