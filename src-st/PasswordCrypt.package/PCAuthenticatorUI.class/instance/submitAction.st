processing
submitAction
	
	PCAuthenticator uniqueInstance 
		insertUserCredential: (PCUserCredential new
										appname: self appname text;
										username: self username text;
										password: self password text;
										yourself).
	UIManager default inform: 'Upserted "', self username text, '" for "', self appname text, '".'
	