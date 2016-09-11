GT-InspectorExtensions
gtInspectorIconsIn: composite
	<gtInspectorPresentationOrder: 0>
	<script: 'self inspect'>
	composite table
		title: 'Icons';
		display: [ (self class selectorsInCategory: 'accessing - icons') sorted
				collect: [ :each | each -> (self perform: each) ] ];
		column: 'Icon' evaluated: #value width: 100;
		column: 'Selector' evaluated: #key