accessing - icons
woman1Icon
	"Private - Generated method"
	^ self icons
		at: #woman1Icon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self woman1IconContents readStream) ]