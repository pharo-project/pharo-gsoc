Class {
	#name : #PharoTopicsTest,
	#superclass : #TestCase,
	#category : 'PharoTopics'
}

{ #category : #tests }
PharoTopicsTest >> testBuildHtml [
	| buildDir |
	buildDir := (OSEnvironment current getEnv: 'TRAVIS_BUILD_DIR')
		asFileReference.
	PharoTopicsPageBuilder new
		templateFile: buildDir / 'page.html';
		dataFromFile: buildDir / 'Topics.st';
		generatePageFile: buildDir / 'Topics.html'
]
