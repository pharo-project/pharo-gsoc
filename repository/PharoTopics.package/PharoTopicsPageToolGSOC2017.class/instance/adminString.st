constants
adminString
	^ (self admins collect: [ :assoc |
		'<a href="mailto:', assoc value, '">', assoc key, '</a>' ])
	
		joinUsing: ', '