public API
sha256Crypt: aString
	^ self sha256Crypt: aString withSalt: (self salt: self saltSize) 