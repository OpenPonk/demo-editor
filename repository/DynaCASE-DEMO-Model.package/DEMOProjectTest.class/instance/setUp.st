running
setUp
	demoProject := DEMOProject new.
	demoProject model: DEMOModel new.
	demoProject addElement: DEMOLink new.
	demoProject addElement: DEMOBasicElement new.
	demoProject addModel: DEMOViewModel new.
	demoProject addElement: DEMOBasicElement new.
	demoProject addModel: DEMOViewModel new.
	demoProject addElement: DEMOLink new.
	demoProject addModel: DEMOViewModel new.
	demoProject addElement: DEMOBasicElement new.
	demoProject addElement: DEMOLink new