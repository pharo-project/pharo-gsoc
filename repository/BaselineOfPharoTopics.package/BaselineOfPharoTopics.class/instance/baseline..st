baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do:
			[ spec
				configuration: 'PharoPeople'
				with:
					[ spec
						versionString: #bleedingEdge;
						repository: 'http://www.smalltalkhub.com/mc/Pharo/PharoPeople/main' ].
			spec package: 'PharoTopics' with: [ spec requires: #('PharoPeople') ].
			spec group: 'default' with: #('PharoTopics') ]