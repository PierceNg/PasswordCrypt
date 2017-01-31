utilities
sha256Crypt: aString withSalt: aSaltString
		
	^ self ffiCall: #(String sha256_crypt (String aString, String aSaltString)) 
		module: #shacrypt