public API
insertUserCredential: aUser

	(db at: aUser appname ifAbsentPut: [ Dictionary new ]) 
		at: aUser username put: (crypt sha256Crypt: aUser password)
