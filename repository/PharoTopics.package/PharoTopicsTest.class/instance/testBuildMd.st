tests
testBuildMd
	PharoTopicsMdPageTool new
		dataFromFile: self home / 'Topics.st';
		generatePageFile: 'Topics.md'