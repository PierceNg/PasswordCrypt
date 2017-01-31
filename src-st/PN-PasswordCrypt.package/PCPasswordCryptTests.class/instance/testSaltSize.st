testing
testSaltSize
	| size |
	
	size := crypt saltSize.
	self assert: ((size >= 8) and: [ size <= 16 ])
