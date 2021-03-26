public API
sha512Crypt: aString withSalt: aSaltString		
	^ self ffiCall: #(char* sha512_crypt (char* aString, char* aSaltString)) 
		module: self library