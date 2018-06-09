testing
testInstanceIndirectWrong

	crypt cryptAlgo: #sha512Crypt:.
	self deny: (crypt crypt: 'Hello world!' withSalt: 'saltstring') = '$5$saltstring$5B8vYYiY.CVt1RlTTf8KbXBH3hsxY/GNooZaBBGWEc5' 
