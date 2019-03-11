"
**Example:**

```smalltalk
	buildDir := '/home/me/pharo-project-proposals'	asFileReference.
	PharoTopicsPageBuilder new
		templateFile: buildDir / 'page.html';
		dataFromFile: buildDir / 'Topics.st';
		generatePageFile: buildDir / 'Topics.html'
```
"
Class {
	#name : #PharoTopicsPageBuilder,
	#superclass : #PharoPeoplePageTool,
	#instVars : [
		'template'
	],
	#category : #PharoTopics
}

{ #category : #accessing }
PharoTopicsPageBuilder >> dataFromStream: aStream [
	| ast |
	ast := RBParser parseExpression: aStream contents.
	data := ast statements
		collect: [ :each | 
			OpalCompiler new
				source: each formattedCode;
				evaluate ]
]

{ #category : #default }
PharoTopicsPageBuilder >> defaultFile [
	^ 'pharo-topics'
]

{ #category : #'html generation' }
PharoTopicsPageBuilder >> generateBody [
	| shuffled |
	shuffled := data shuffled.
	^ self
		tag: #body
		with:
			[ self tag: #h1 with: [ stream << self title ].
			stream << self preamble.
			self generateTocFor: shuffled.
			shuffled
				do: [ :each | 
					self generateEntryFor: each.
					stream << String crlf ].
			stream << self postamble ]
]

{ #category : #'html generation' }
PharoTopicsPageBuilder >> generateEntryElementsFor: topic [
	
	self tag: #tr with: [ 
		self tag: #td with: [ stream << 'Title' ].
		self tag: #td with: [ 
			self tag: #span attributes: { #class -> 'cn' . #id -> ('topic-' , (self anchorForTitle: topic title)) } asDictionary with: [ stream << topic title ] ] ].
	self tag: #tr with: [ 
		self tag: #td with: [ stream << 'Email' ].
		self tag: #td with: [ self generateEmailFor: topic ] ]. 
	self tag: #tr with: [ 
		self tag: #td with: [ stream << 'Supervisors ' ].
		self tag: #td with: [ stream << topic supervisors ] ].
	self tag: #tr with: [ 
		self tag: #td with: [ stream << 'Keywords' ].
		self tag: #td  with: [ stream  << topic keywords ] ].
	self tag: #tr with: [ 
		self tag: #td with: [ stream << 'Context' ].
		self tag: #td with: [ stream << topic context ] ].
	topic goal 
		ifNotNil: [self tag: #tr with: [ 
		self tag: #td with: [ stream << 'Goal' ].
		self tag: #td with: [ stream << topic goal ] ] ].
	self tag: #tr with: [ 
		self tag: #td with: [ stream << 'Level' ].
		self tag: #td with: [ stream << topic level ] ].
	self tag: #tr with: [ 
		self tag: #td with: [ stream << 'Candidate' ].
		self tag: #td with: [ stream << topic candidate ] ]
]

{ #category : #'html generation' }
PharoTopicsPageBuilder >> generateEntryFor: topic [
	self tag: #a attributes: { #name -> topic id } asDictionary with: [   
		self tag: #p with: [ 
			self tag: #table with: [ 
				stream << self tableColGroup.
				self generateEntryElementsFor: topic ] ] ]
]

{ #category : #'html generation' }
PharoTopicsPageBuilder >> generatePage [
	| fileStream topics |
	fileStream := stream.
	topics := String
		<< [ :s | 
			stream := s.
			self generateTopics ].
	stream := fileStream.
	stream
		<<
			((template copyReplaceAll: '{{TOPICS}}' with: topics)
				copyReplaceAll: '{{TIMESTAMP}}'
				with: DateAndTime now asString)
]

{ #category : #'html generation' }
PharoTopicsPageBuilder >> generateTocFor: topics [
	self
		tag: #ul
		with:
			[ topics
				do:
					[ :each | 
					self
						tag: #li
						with:
							[ self
								tag: #a
								attributes: {(#href -> ('#topic-' , (self anchorForTitle: each title)))} asDictionary
								with: [ stream nextPutAll: each title ] ] ] ]
]

{ #category : #'html generation' }
PharoTopicsPageBuilder >> generateTopics [
	| shuffled |
	shuffled := data shuffled.
	self generateTocFor: shuffled.
	shuffled
		do: [ :each | 
			self generateEntryFor: each.
			stream lf ]
]

{ #category : #constants }
PharoTopicsPageBuilder >> tableColGroup [
	^ '<colgroup><col style="text-align:left;width:25%;"/><col style="text-align:left;"/></colgroup>'
]

{ #category : #accessing }
PharoTopicsPageBuilder >> templateFile: aFileReference [
	template := aFileReference contents
]
