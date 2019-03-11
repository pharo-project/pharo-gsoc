Class {
	#name : #BaselineOfPharoTopics,
	#superclass : #BaselineOf,
	#category : 'BaselineOfPharoTopics'
}

{ #category : #baseline }
BaselineOfPharoTopics >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'PharoPeople'
				with: [ spec
						repository: 'github://pharo-contributions/PharoPeople/repository' ].
			spec
				package: 'PharoTopics'
				with: [ spec requires: #('PharoPeople') ].
			spec group: 'default' with: #('PharoTopics') ]
]
