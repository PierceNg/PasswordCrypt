private
saltStringRand
	^ saltStringRand ifNil: [ saltStringRand := Random new ]