Class {
	#name : #BaselineOfPharoTopicsConverter,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoTopicsConverter
}

{ #category : #baselines }
BaselineOfPharoTopicsConverter >> baseline: spec [
	<baseline>
	spec for: #common do: [	
		"External dependencies"
		spec
			baseline: 'PharoTopics'
			with: [ spec repository: 'github://pharo-project/pharo-project-proposals/repository' ].
						
		"Packages"
		spec 
			package: 'PharoTopicsConverter' with: [ spec requires: #('PharoTopics') ];
			package: 'PharoTopicsConverter-Tests' with: [ spec requires: #('PharoTopicsConverter') ] ].
]
