accessing
cryptAlgo
	^ cryptAlgo ifNil: [ cryptAlgo := self class defaultAlgo ]