removing
removeSelfFromModel: aModel
	owner := aModel.
	self relatedElements do: [ :each | each removeSelfFromModel: aModel ]