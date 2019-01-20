accessing
saltFromPassword: aPasswordString
	| a |
	
	a := aPasswordString substrings: '$'.
	(a size = 3) ifFalse: [ PCPasswordAuthenticatorError signal: 'Bad format.' ].
	^ a at: 2