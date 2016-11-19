accessing
versionsListFor: anIndex
	| versions |
	versions := self versionsFor: anIndex.
	^ versions
		collect: [ :each | each version asString , '|' , each label , ' [' , each id asString , ']' ]