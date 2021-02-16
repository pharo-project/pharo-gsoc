Class {
	#name : #PharoTopicsConverter,
	#superclass : #Object,
	#instVars : [
		'topics'
	],
	#category : #PharoTopicsConverter
}

{ #category : #'as yet unclassified' }
PharoTopicsConverter class >> supervisorsJsonFile [
	^ 'supervisors.json' asFileReference
]

{ #category : #'as yet unclassified' }
PharoTopicsConverter class >> topicsJsonFile [
	^ 'topics.json' asFileReference
]

{ #category : #'as yet unclassified' }
PharoTopicsConverter class >> topicsUrl [
	^ 'https://raw.githubusercontent.com/pharo-project/pharo-project-proposals/master/Topics.st'
]

{ #category : #'as yet unclassified' }
PharoTopicsConverter >> generateSupervisorsJson [
	| supervisors |
	
	supervisors := (topics flatCollect: [ :each |
			each supervisors ]) asSet asArray sort.
		
	^ STONJSON toStringPretty: (supervisors collect: [ :each |
		{ 
			'name' -> each .
			'email' -> '' .
			'description' -> '' .
			'picture' -> ''
		} asOrderedDictionary ]).
	
]

{ #category : #'as yet unclassified' }
PharoTopicsConverter >> generateSupervisorsJsonFile [
	| jsonString |
	jsonString := self generateSupervisorsJson.
	
	self class supervisorsJsonFile writeStreamDo: [ :stream |
		stream nextPutAll: jsonString ].
]

{ #category : #'as yet unclassified' }
PharoTopicsConverter >> generateTopicsJson [
	^ STONJSON toStringPretty: (topics asArray collect: [ :each |
		{ 
			'title' -> each title .
			'supervisors' -> each supervisors asArray .
			'context' -> each context .
			'goal' -> each goal .
			'keywords' -> each keywords asArray .
			'levels' -> each level asArray
		} asOrderedDictionary ]).
	
]

{ #category : #'as yet unclassified' }
PharoTopicsConverter >> generateTopicsJsonFile [
	| jsonString |
	jsonString := self generateTopicsJson.
	
	self class topicsJsonFile writeStreamDo: [ :stream |
		stream nextPutAll: jsonString ].
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocess: aTopic [
	self preprocessTitle: aTopic.
	self preprocessSupervisors: aTopic.
	self preprocessEmail: aTopic.
	self preprocessContext: aTopic.
	self preprocessGoal: aTopic.
	self preprocessKeywords: aTopic.
	self preprocessLevel: aTopic.
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocessContext: aTopic [
	aTopic context: (self trim: aTopic context)
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocessEmail: aTopic [
	aTopic email: ((',' split: aTopic email)
		collect: [ :each | self trim: each ])
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocessGoal: aTopic [
	aTopic goal: (self trim: aTopic goal)
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocessKeywords: aTopic [
	aTopic keywords: ((',' split: aTopic keywords)
		collect: [ :each | (self trim: each) asLowercase ])
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocessLevel: aTopic [
	aTopic level: ((' or ' split: aTopic level)
		collect: [ :each | self trim: each ])
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocessSupervisors: aTopic [
	aTopic supervisors: ((',' split: aTopic supervisors)
		collect: [ :each | self trim: each ])
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocessTitle: aTopic [
	aTopic title: (self trim: aTopic title)
]

{ #category : #preprocessing }
PharoTopicsConverter >> preprocessTopics [
	topics do: [ :each | self preprocess: each ]
]

{ #category : #'as yet unclassified' }
PharoTopicsConverter >> readTopics [
	| contents builder |
	contents := self readTopicsFileContents.
	
	builder := PharoTopicsPageBuilder new.
	builder dataFromStream: contents readStream.
	topics := builder data.
	
	self preprocessTopics.
	
]

{ #category : #'as yet unclassified' }
PharoTopicsConverter >> readTopicsFileContents [
	^ ZnClient new
		url: self class topicsUrl;
		get.
]

{ #category : #preprocessing }
PharoTopicsConverter >> trim: aStringOrNil [
	^ aStringOrNil
		ifNil: [ '' ]
		ifNotNil: [ aStringOrNil trimBoth ]
]
