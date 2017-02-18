tests
testOk
	| user1 |

	user1 := PCUserCredential new
		appname: self appname;
		username: 'testuser';
		password: 'abc123';
		yourself.

	ui appname text: self appname.
	ui username text: user1 username.
	ui password text: user1 password.
	ui submitAction.
	
	self assert: (PCAuthenticator uniqueInstance validateUserCredential: user1) = user1
