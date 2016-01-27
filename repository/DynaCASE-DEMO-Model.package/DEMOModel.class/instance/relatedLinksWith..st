as yet unclassified
relatedLinksWith: anElementModel
	| relatedLinks |
	relatedLinks := OrderedCollection new.
	relatedLinks
		addAll:
			(informationLinks
				select: [ :link | link source = anElementModel dcID or: link target = anElementModel dcID ]).
	relatedLinks
		addAll:
			(processLinks
				select: [ :link | link source = anElementModel dcID or: link target = anElementModel dcID ]).
	^ relatedLinks