as yet unclassified
addMenus
	| b |
	b := RTMenuBuilder new view: view.
	b menu: 'export' submenu: 'lines' callback: [ self exportLines ].
	b menu: 'export' submenu: 'actors' callback: [ self exportActors ]