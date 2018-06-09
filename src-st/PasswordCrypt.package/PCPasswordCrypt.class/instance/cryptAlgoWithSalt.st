public API
cryptAlgoWithSalt
	
	(self class supportedAlgo includes: cryptAlgo) ifFalse: [ 
		PCPasswordAuthenticatorError signal: 'Unknown algorithm.' ].
		
	^ ((cryptAlgo asString), 'withSalt:') asSymbol