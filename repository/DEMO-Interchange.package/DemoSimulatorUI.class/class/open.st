instance creation
open
	<script>
	DemoFormetisAPI default isAuthenticated
		ifTrue: [ self new openWithSpec ]
		ifFalse: [ DemoLoginUI new
				whenAuthenticated: [ self new openWithSpec ];
				openWithSpec ]