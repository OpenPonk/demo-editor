bootstrapping
bootstrapType: aPair
	self class
		compile:
			(String
				streamContents: [ :stream | 
					stream
						<< aPair value;
						crtab;
						<< ' ^ #';
						<< aPair value ])
		classified: 'types'