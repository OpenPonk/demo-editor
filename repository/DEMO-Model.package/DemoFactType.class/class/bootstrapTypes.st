bootstrapping
bootstrapTypes
	<script>
	| basic complex |
	basic := #(pm promise dc decline rq request qt quit ac accept rj reject st state sp stop).
	complex := #(rv revoke al allow rf refuse).
	basic pairsDo: [ :key :type | self bootstrapType: key -> type ].
"	#(rq request pm promise st state  ac accept) pairsDo: [ :key :name |
		self bootstrapComplexType: 'rv' key -> ()
	]."