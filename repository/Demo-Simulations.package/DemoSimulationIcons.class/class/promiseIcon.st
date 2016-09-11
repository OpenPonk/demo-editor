accessing - icons
promiseIcon
	"Private - Generated method"
	^ self icons
		at: #promiseIcon
		ifAbsentPut: [ Form
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self promiseIconContents readStream) ]