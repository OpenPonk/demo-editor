as yet unclassified
open: aTitle loadBlock: aLoadBlock saveBlock: aSaveBlock
	^ self new
		title: aTitle;
		loadBlock: aLoadBlock;
		saveBlock: aSaveBlock;
		openWithSpec