private
salt: aSize

	^ String streamContents: [ :s |
			1 to: aSize do: [ :i |
			 	s nextPut: (saltStock atRandom: saltStringRand) ]]