accessing
icon: anIcon
	icon := anIcon.
	iconElement shape form: self currentIcon.
	iconElement update.
	iconElement signalUpdate