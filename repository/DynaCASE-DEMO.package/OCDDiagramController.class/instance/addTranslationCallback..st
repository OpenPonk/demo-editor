as yet unclassified
addTranslationCallback: aController
	aController figure addCallback: (TRTranslationCallback block: [:shape :step | aController moved])