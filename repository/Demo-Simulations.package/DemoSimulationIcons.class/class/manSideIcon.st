accessing - icons
manSideIcon
	"Private - Generated method"
	^ self icons
		at: #manSideIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self manSideIconContents readStream) ]