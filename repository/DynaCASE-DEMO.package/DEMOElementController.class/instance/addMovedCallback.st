hooks
addMovedCallback
 self figure addCallback: (TRTranslationCallback block: [:shape :step | self figureMoved: step])