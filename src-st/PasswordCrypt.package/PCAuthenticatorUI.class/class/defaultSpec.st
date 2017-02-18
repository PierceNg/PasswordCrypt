specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :c |
			c newRow: [ :r | r add: #appname ];			
			  newRow: [ :r | r add: #username ];
			  newRow: [ :r | r add: #password ];
			  newRow: [ :r | r add: #submitButton ]]; 
			yourself