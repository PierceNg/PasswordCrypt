tests
testInsertAndValidateWrongPassword
	| ui uv |
	
	ui := PCUserCredential new 
		appname: self appname;
		username: 'testuser';
		password: 'abc123';
		yourself.
	auth insertUserCredential: ui.
	
	uv := PCUserCredential new 
		appname: self appname;
		username: 'testuser';
		password: 'abc12';
		yourself.

	self assert: (auth validateUserCredential: uv)	isNil

	