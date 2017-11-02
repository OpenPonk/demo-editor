api - new
modelsForEnterprise: anEnterprise
	^ ((self
		jsonResponseFor: ('/api/administration/enterprises/<1s>/models' expandMacrosWith: (anEnterprise at: 'id')))
		at: 'models') collect: [ :each | self modelVersionFrom: each ]