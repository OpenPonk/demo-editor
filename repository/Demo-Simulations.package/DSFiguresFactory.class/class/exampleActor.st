as yet unclassified
exampleActor
| v a |
v := RTView new.

a := DSActor new.

v add: a.
a label: 'John Doe'.

v inspect