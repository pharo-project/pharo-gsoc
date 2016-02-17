tests
testBuildHtml
	PharoTopicsPageTool new
		dataFromFile: self home / 'Topics.st';
		generatePageFile: 'Topics.html'