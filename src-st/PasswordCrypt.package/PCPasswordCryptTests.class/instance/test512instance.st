testing
test512instance

	self assert: (crypt sha512Crypt: 'Hello world!' withSalt: 'saltstring')
		equals: '$6$saltstring$svn8UoSVapNtMuq1ukKS4tPQd8iKwSMHWjl/O817G3uBnIFNjnQJuesI68u4OTLiBFdcbYEdFCoEOfaS35inz1' 