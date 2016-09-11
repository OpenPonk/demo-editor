accessing - icons
rejectIcon
	"Private - Generated method"
	^ self icons
		at: #rejectIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self rejectIconContents readStream) ]