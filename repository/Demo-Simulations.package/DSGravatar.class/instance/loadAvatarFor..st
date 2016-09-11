loading
loadAvatarFor: anEmail
	^ ZnEasy
		getJpeg: 'https://www.gravatar.com/avatar/' , (MD5 hashMessage: (anEmail ifNil: [ '' ])) hex