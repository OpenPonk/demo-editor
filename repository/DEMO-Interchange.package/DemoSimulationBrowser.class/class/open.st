world menu
open
	<script>
	DemoFormetisAPI default isAuthenticated
		ifTrue: [ self new open ]
		ifFalse: [ DemoLoginUI new
				whenAuthenticated: [ self new open ];
				openWithSpec ]
