tests
testBuildHtml
	PharoTopicsPageTool new
		dataFromFile: 'Topics.st' asFileReference;
		generatePageFile: 'Topics.html'