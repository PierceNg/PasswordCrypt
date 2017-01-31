tests
testValidateNoSuchUser
	| uv |
	
	uv := PCUserCredential new 
		appname: self appname;
		username: 'testuser';
		password: 'abc123';
		yourself.

	self assert: (auth validateUserCredential: uv)	isNil