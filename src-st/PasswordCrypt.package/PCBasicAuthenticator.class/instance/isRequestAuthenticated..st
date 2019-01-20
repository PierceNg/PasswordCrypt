testing
isRequestAuthenticated: request
	| authorization username password |
	
	authorization := [ request basicAuthentication ] on: Error do: [ ^ false ].
	username := authorization first.
	password := authorization second.

    	^ (PCAuthenticator uniqueInstance validateUserCredential: (PCUserCredential new
      			appname: self realm;
      			username: username;
      			password: password;
      			yourself))
		ifNil: [ false ]
		ifNotNil: [ true ]
