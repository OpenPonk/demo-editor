accessing - icons
revokeIcon
	"Private - Generated method"
	^ self icons
		at: #revokeIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self revokeIconContents readStream) ]