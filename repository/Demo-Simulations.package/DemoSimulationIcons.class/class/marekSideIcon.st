accessing - icons
marekSideIcon
	"Private - Generated method"
	^ self icons
		at: #marekSideIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self marekSideIconContents readStream) ]