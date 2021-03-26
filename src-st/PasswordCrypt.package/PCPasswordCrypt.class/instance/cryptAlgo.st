public API
cryptAlgo
	^ cryptAlgo ifNil: [ cryptAlgo := self class defaultAlgo ]