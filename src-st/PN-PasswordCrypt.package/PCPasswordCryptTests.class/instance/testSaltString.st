testing
testSaltString
	| size string |
	
	size := crypt saltSize.
	string := crypt salt: size.
	self assert: (string size = size)