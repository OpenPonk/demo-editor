accessing - icons
man2Icon
	"Private - Generated method"
	^ self icons
		at: #man2Icon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self man2IconContents readStream) ]