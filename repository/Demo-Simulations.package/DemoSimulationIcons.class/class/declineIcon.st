accessing - icons
declineIcon
	"Private - Generated method"
	^ self icons
		at: #declineIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self declineIconContents readStream) ]