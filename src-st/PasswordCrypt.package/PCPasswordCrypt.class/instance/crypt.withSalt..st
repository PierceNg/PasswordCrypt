public API
crypt: aString withSalt: aSaltString
	^ self perform: (self cryptAlgoWithSalt) with: aString with: aSaltString 