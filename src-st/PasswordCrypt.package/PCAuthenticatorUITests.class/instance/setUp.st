setup-teardown
setUp
	
	ui := PCAuthenticatorUI new.
	ui initializeWidgets.
	PCAuthenticator uniqueInstance initializeDatabaseFor: self appname