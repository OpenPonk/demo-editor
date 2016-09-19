accessing - icons
martinSideIcon
	"Private - Generated method"
	^ self icons
		at: #martinSideIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self martinSideIconContents readStream) ]