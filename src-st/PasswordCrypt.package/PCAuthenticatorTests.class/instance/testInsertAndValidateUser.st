tests
testInsertAndValidateUser
	| ui uv |
	
	ui := PCUserCredential new 
		appname: self appname;
		username: 'testuser';
		password: 'abc123';
		yourself.
	auth insertUserCredential: ui.
	self assert: (auth appNamed: self appname hasUserNamed: ui username).
	
	uv := PCUserCredential new 
		appname: self appname;		
		username: 'testuser';
		password: 'abc123';
		yourself.
	self assert: (auth validateUserCredential: uv)	= uv

	