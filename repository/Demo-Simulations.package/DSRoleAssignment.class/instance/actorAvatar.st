accessing
actorAvatar
	^ avatar ifNil: [ avatar := self actorAvatarFor: actorAvatar ]