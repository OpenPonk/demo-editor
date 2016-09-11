accessing - icons
personIcon
	"Private - Generated method"
	^ self icons
		at: #personIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self personIconContents readStream) ]