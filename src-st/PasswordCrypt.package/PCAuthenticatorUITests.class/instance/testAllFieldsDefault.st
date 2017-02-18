tests
testAllFieldsDefault
	| user1 |

	ui submitAction.
	
	user1 := PCUserCredential new
		appname: '';
		username: '';
		password: '';
		yourself.

	self assert: (PCAuthenticator uniqueInstance validateUserCredential: user1) = user1
