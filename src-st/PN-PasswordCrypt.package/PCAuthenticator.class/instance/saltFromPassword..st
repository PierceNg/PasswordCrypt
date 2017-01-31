private
saltFromPassword: aString
	| a |
	
	a := aString substrings: '$'.
	(a size = 3) ifFalse: [ PCPasswordAuthenticatorError signal: 'Bad format.' ].
	^ a at: 2