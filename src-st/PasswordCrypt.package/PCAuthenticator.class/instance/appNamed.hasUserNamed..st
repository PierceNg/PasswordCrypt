public API
appNamed: appname hasUserNamed: username

	^ (db at: appname ifAbsent: [ false ])
			includesKey: username