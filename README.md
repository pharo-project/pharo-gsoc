# Pharo Project Proposals [![Build Status](https://travis-ci.org/pharo-project/pharo-project-proposals.svg?branch=master)](https://travis-ci.org/pharo-project/pharo-project-proposals)

Small and medium project proposals to improve [Pharo](http://pharo.org). The list of projects is written in Pharo itself and is used to generate http://topics.pharo.org. The list is also used for gsoc 2016: http://gsoc.pharo.org/

You can see the list also in markdown format: [Topics.md](https://github.com/pharo-project/pharo-project-proposals/blob/gh-pages/Topics.md) (no need to update this file manually, it will be regenerated).

## GSOC 2016

If you are looking for list of topics for GSOC 2016 please see http://gsoc.pharo.org/ or [Topics.md](https://github.com/pharo-project/pharo-project-proposals/blob/gh-pages/Topics.md).


## Adding a Proposal

Please propose your own project by following the following template. You can edit the list on github here: https://github.com/pharo-project/pharo-project-proposals/blob/master/Topics.st and send a pull request.

```smalltalk
     PharoTopic new
       title: 'The name of your project;
       contact: 'email address';
       supervisors: 'Supervisors names';
       keywords: 'keywords separated by spaces;
       context: 'a description of the context of the project';
       goal: 'description of the goal';
       level: 'Beginner or Intermediate or Advanced';
       yourself

	   .

```

Do not use a dynamic array, **Separate objects with a dot on a line on its own**.

