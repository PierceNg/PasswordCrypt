public API
insertUserCredential: aUser

	(db includesKey: aUser appname) ifFalse: [ 
		db at: aUser appname put: Dictionary new ].
		
	(db at: aUser appname) at: aUser username put: (crypt sha256Crypt: aUser password)
