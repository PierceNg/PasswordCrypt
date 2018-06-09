testing
testInstanceIndirectUnknown

	crypt cryptAlgo: #sha145Crypt:.
	self should: [ crypt crypt: 'Hello world!' withSalt: 'saltstring' ]
		raise: PCPasswordAuthenticatorError