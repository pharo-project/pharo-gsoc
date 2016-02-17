tests
testBuildMd
	PharoTopicsMdPageTool new
		dataFromFile: 'Topics.st' asFileReference;
		generatePageFile: 'Topics.md'