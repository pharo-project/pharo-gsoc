Class {
	#name : #PharoTopicsTest,
	#superclass : #TestCase,
	#category : 'PharoTopics'
}

{ #category : #'as yet unclassified' }
PharoTopicsTest >> home [
	^ (OSEnvironment current getEnv: 'TRAVIS_BUILD_DIR') asFileReference
]

{ #category : #tests }
PharoTopicsTest >> testBuildHtml [
	PharoTopicsPageToolGSOC2017 new
		dataFromFile: self home / 'Topics.st';
		generatePageFile: 'Topics.html'
]

{ #category : #tests }
PharoTopicsTest >> testBuildMd [
	PharoTopicsMdPageTool new
		dataFromFile: self home / 'Topics.st';
		generatePageFile: 'Topics.md'
]
