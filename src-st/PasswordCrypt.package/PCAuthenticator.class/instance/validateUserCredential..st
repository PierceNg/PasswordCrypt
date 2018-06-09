public API
validateUserCredential: aUser
	| salt pwh pwh2 |
	
	(db includesKey: aUser appname) ifFalse: [ ^ nil ].
	((db at: aUser appname) includesKey: aUser username) ifFalse: [ ^ nil ].
	
	pwh := (db at: aUser appname) at: aUser username.
	
	[ salt := self saltFromPassword: pwh ]
	on: PCPasswordAuthenticatorError do: [ ^ nil ].

	pwh2 := crypt perform: (crypt cryptAlgoWithSalt) with: aUser password with: salt.
	^ (pwh2 = pwh) 
		ifTrue: [ aUser ]
		ifFalse: [ nil ]
	
