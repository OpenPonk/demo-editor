accessing - icons
man3Icon
	"Private - Generated method"
	^ self icons
		at: #man3Icon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self man3IconContents readStream) ]