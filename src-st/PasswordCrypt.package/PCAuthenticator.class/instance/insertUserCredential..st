public API
insertUserCredential: aUser

	(db at: aUser appname ifAbsentPut: [ Dictionary new ]) 
		at: aUser username put: (crypt perform: (crypt cryptAlgo) with: aUser password)
