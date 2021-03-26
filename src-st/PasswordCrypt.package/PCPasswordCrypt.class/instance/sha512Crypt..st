public API
sha512Crypt: aString
	^ self sha512Crypt: aString withSalt: (self salt: self saltSize) 