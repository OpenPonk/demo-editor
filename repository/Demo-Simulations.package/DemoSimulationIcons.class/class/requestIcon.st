accessing - icons
requestIcon
	"Private - Generated method"
	^ self icons
		at: #requestIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self requestIconContents readStream) ]