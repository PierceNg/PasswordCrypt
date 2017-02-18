tests
testInsertAndRemoveUser
	| ui |
	
	ui := PCUserCredential new 
		appname: self appname;
		username: 'testuser';
		password: 'abc123';
		yourself.

	auth insertUserCredential: ui.
	self assert: (auth appNamed: self appname hasUserNamed: ui username).
	
	auth deleteUserCredential: ui.
	self assert: (auth appNamed: self appname hasUserNamed: ui username) not


	