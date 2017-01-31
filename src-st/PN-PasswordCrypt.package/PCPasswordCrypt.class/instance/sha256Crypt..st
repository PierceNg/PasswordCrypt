public API
sha256Crypt: aString
	^ self class sha256Crypt: aString withSalt: (self salt: self saltSize) 