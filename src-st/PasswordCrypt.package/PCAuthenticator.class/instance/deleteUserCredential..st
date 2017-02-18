public API
deleteUserCredential: aUser

	(db at: aUser appname ifAbsent: [ ])
		removeKey: aUser username ifAbsent: [ ] 