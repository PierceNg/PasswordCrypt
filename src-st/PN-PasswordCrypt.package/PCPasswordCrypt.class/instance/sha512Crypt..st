public API
sha512Crypt: aString
	^ self class sha512Crypt: aString withSalt: (self salt: self saltSize) 