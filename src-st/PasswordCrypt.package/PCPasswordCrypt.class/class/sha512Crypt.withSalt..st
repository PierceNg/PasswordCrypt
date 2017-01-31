utilities
sha512Crypt: aString withSalt: aSaltString
		
	^ self ffiCall: #(String sha512_crypt (String aString, String aSaltString)) 
		module: #shacrypt