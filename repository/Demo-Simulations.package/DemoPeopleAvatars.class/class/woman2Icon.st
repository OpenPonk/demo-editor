accessing - icons
woman2Icon
	"Private - Generated method"
	^ self icons
		at: #woman2Icon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self woman2IconContents readStream) ]