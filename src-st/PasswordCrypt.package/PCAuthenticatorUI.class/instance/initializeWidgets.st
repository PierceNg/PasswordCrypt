initializing
initializeWidgets
	
	appname := self newTextInput
		autoAccept: true;
		ghostText: 'Application';
		yourself.

	username := self newTextInput
		autoAccept: true;
		ghostText: 'Username';
		yourself.

	password := self newTextInput
		autoAccept: true;
		ghostText: 'Password';
		beEncrypted;
		yourself.

	submitButton := self newButton
		label: 'Upsert';
		action: [ self submitAction ];
		yourself.
			
	self focusOrder
		add: appname;
		add: username;
		add: password;
		add: submitButton 
