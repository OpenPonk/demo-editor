as yet unclassified
example
| constructor |
constructor := DSTheaterConstructor new.
constructor model: (DemoXmlInterchange readFile: 'D:\OpenPonk\demo-xml\Pizzeria.xml' asFileReference).
constructor createViewElements.
constructor createControlBoxes.
constructor assignActors: {
	'Completer' -> #(Daniel man1).
	'Customer' -> #(Sophia woman1).
	'Pizza Payer' -> #(Malcolm man2).
	'Baker' -> #(Oliver man3).
	'Deliverer' -> #(Michelle woman2).
}.

constructor enableControl.

constructor view @ RTDraggableView