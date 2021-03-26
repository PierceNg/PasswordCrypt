public API
cryptAlgoWithSalt
	
	(self class supportedAlgo includes: self cryptAlgo) ifFalse: [ 
		PCPasswordAuthenticatorError signal: 'Unknown algorithm.' ].
		
	^ ((self cryptAlgo asString), 'withSalt:') asSymbol