accessing - icons
man1Icon
	"Private - Generated method"
	^ self icons
		at: #man1Icon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self man1IconContents readStream) ]