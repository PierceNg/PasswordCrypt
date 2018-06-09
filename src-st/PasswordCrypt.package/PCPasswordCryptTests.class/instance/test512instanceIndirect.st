testing
test512instanceIndirect

	crypt cryptAlgo: #sha512Crypt:.
	self assert: (crypt crypt: 'Hello world!' withSalt: 'saltstring')
		equals: '$6$saltstring$svn8UoSVapNtMuq1ukKS4tPQd8iKwSMHWjl/O817G3uBnIFNjnQJuesI68u4OTLiBFdcbYEdFCoEOfaS35inz1' 