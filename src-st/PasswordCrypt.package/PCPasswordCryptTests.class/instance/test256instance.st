testing
test256instance

	self assert: (crypt sha256Crypt: 'Hello world!' withSalt: 'saltstring')
		equals: '$5$saltstring$5B8vYYiY.CVt1RlTTf8KbXBH3hsxY/GNooZaBBGWEc5' 