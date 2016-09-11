accessing - icons
cloudIcon
	"Private - Generated method"
	^ self icons
		at: #cloudIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self cloudIconContents readStream) ]