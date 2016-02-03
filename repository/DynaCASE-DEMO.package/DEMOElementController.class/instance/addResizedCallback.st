hooks
addResizedCallback
 self figure addCallback: (TRExtentCallback block: [:shape :ratio | self figureResized: ratio])