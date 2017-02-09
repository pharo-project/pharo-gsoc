constants
preamble
	^ super preamble
		copyReplaceAll: self oldAdminString
		with: self adminString 