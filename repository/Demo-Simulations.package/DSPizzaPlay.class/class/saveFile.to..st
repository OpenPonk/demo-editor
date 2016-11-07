as yet unclassified
saveFile: file to: aMethod
	^ self
		compile:
			('{1}
	"{2}"
	^ {3}'
				format:
					{aMethod.
					file fullName.
					file contents storeString})