accessing - icons
woman3Icon
	"Private - Generated method"
	^ self icons
		at: #woman3Icon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self woman3IconContents readStream) ]