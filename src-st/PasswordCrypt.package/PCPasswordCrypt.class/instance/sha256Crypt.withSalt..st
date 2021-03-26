public API
sha256Crypt: aString withSalt: aSaltString		
	^ self ffiCall: #(char* sha256_crypt (char* aString, char* aSaltString)) 
		module: self library