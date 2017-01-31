setup-teardown
setUp

	auth := PCAuthenticator uniqueInstance.
	auth initializeDatabaseFor: self appname