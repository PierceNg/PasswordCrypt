accessing
atUsername: username putPassword: password

	PCAuthenticator uniqueInstance insertUserCredential: (PCUserCredential new
		appname: self realm;
		username: username;
		password: password;
		yourself)