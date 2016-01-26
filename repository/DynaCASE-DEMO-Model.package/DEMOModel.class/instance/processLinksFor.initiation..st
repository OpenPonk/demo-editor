private
processLinksFor: aTransactionID initiation: isInitiation
	^ processLinks
		select: [ :each | each source = aTransactionID and: each isInitiation = isInitiation ]