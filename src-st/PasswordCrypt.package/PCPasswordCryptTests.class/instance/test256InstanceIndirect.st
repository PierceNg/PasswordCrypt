testing
test256InstanceIndirect

	crypt cryptAlgo: #sha256Crypt:.
	self assert: (crypt crypt: 'Hello world!' withSalt: 'saltstring')
		equals: '$5$saltstring$5B8vYYiY.CVt1RlTTf8KbXBH3hsxY/GNooZaBBGWEc5' 
