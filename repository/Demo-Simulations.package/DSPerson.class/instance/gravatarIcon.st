as yet unclassified
gravatarIcon
	| name |
	name := ''.
	label ifNotNil: [ name := (label model withoutSuffix: '1') withoutSuffix: '2' ].
	^ DSGravatar current avatarForName: name