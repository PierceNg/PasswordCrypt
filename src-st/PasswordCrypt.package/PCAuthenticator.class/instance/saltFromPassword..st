private
saltFromPassword: aString
	
	self deprecated: 'Use PCPasswordCrypt>>saltFromPassword:.'.
	^ crypt saltFromPassword: aString