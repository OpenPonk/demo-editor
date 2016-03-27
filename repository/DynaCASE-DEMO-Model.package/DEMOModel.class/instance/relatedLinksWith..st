accessing
relatedLinksWith: anElementModel
	| relatedLinks |
	relatedLinks := OrderedCollection new.
	relatedLinks
		addAll:
			(informationLinks
				select: [ :link | link source = anElementModel or: link target = anElementModel ]).
	relatedLinks
		addAll:
			(processLinks
				select: [ :link | link source = anElementModel or: link target = anElementModel ]).
	^ relatedLinks