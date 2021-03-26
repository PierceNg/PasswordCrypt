private
salt: aSize

	^ String streamContents: [ :s |
			1 to: aSize do: [ :i |
			 	s nextPut: (self saltStock atRandom: self saltStringRand) ]]