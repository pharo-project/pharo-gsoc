PharoTopic new
	name: 'Better Message Browser';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse / B. van Ryseghem';
	keywords: 'tools ui spec';
	context: 'The browser showing results of senders and implementor messages do not let well navigate in the call chain. Often we want to perform a sender on a message and would like to see if there are senders of the senders. This is typically interesting when doing cleaning.';
	goal: 'The goal of the project is to define a tools to support message browsing.';
	yourself.
	
PharoTopic new
	name: '"Fixing Pharo" for the dummies';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou';
	keywords: 'tools ui spec web';
	context: 'Fixing Pharo is very tedious, even for small changes. If you see a typo in a comment for example, you have to open a new issue on the tracker, fix the typo in an image, create a slice in monticello, select the package that changed, commit the slice to the inbox, and mark the issue as "Resolved (Review needed)". For such fixes I want to push just 1 button and be done with it. ';
	goal: 'The goal of this project is to implement the button that will make reporting such fixes as simple as possible. The integration of such fixes must be as simple. This project will probably require implementing a web interface that Pharo integrators can use to accept/reject these fixes.';
	yourself.

PharoTopic new
	name: 'SmalltalkHub better activity dashboard';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou and N. Petton';
	keywords: 'Smalltalkhub ui amber web voyage';
	context: 'SmalltalkHub (http://www.smalltalkhub.com/) is becoming a central element of the Pharo community. However it lacks functionality to see the activity of the community.';
	goal: 'The goal of the project is to
	        - define which metrics and information is relevant to show
	        - implement them in SmalltalkHub.
			Potential information can be: most active project, recently created project, most donwloaded project this week, active committers. Possible web to analyze: https://npmjs.org, http://rubygems.org';
	yourself.

PharoTopic new
	name: 'SmalltalkHub better activity dashboard';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou and N. Petton';
	keywords: 'Smalltalkhub ui amber web voyage';
	context: 'SmalltalkHub (http://www.smalltalkhub.com/) is becoming a central element of the Pharo community. However it lacks functionality to see the activity of the community.';
	goal: 'The goal of the project is to
	        - define which metrics and information is relevant to show
	        - implement them in SmalltalkHub.
		Potential information can be: most active project, recently created project, most donwloaded project this week, active committers. Possible web to analyze: https://npmjs.org, http://rubygems.org';
	yourself.

PharoTopic new
	name: 'Package Dependency Browser';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: 'tools spec ui';
	context: 'Identifying the dependencies between packages is a tedious but really important task.';
	goal: 'The goal of this project is to build a package browser that support a good navigation to understand how a package is used and uses other packages.';
	links: 'S. Ducasse, D. Pollet, M. Suen, H. Abdeen and I. Alloui, Package Surface Blueprints: Visually Supporting the Understanding of Package Relationships, ICSM 07: Proceedings of the IEEE International Conference on Software Maintenance, 94 103, 2007.';
	yourself.

PharoTopic new
	name: 'Bug Importer for Moose';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and N. Anquetil';
	keywords: 'bugs modeling tools moose analyses';
	context: 'Moose (http://www.moosetechnology.org) is a well-know and successful platform to support data and software analysis development.';
	goal: 'Moose can be connected with a JIRA bug tracker database. The goals of the projects are
	        - revisit the bug metamodel
	        - improve the bug to code mapping heuristics (How do we know that a method was touch by a bug)
	        - add different bugtrackers as input to Moose (Fogbugz, Trac, Redmine)
	        - Enhance the visualizations proposed in Moose.';
	links: 'S. Ducasse, D. Pollet, M. Suen, H. Abdeen and I. Alloui, Package Surface Blueprints: Visually Supporting the Understanding of Package Relationships, ICSM 07: Proceedings of the IEEE International Conference on Software Maintenance, 94 103, 2007.

Andre Hora, Nicolas Anquetil, St�phane Ducasse, Muhammad Bhatti, Cesar Couto, Marco Tulio Valente and Julio Martins, BugMaps: A Tool for the Visual Exploration and Analysis of Bugs, Proceedings of the 16th European Conference on Software Maintenance and Reengineering (CSMR12) - Tool Demonstration Track, 2012' ;
	yourself.

PharoTopic new
	name: 'A Recommander for Pharo';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and (R. Minelli)';
	keywords: 'recommander tools rules analyses';
	context: 'Applying SmallLint rules is a task that often arrives late in the development process.';
	goal: 'The goal of this project is to build a recommander system that can execute after each compilation a set of rules on the edited code. The set of rules should adapt probably by taking into account the choices of the programmer.';
	yourself.
	
PharoTopic new
	name: 'An Expert System Framework';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and  (H. Verjus - M.P. Huget)';
	keywords: 'Expert systems';
	context: 'There is a need for an expert system framework on top of Pharo.
	Several projects could benefitted from it: recommander, moose, robotics, drgeo.';
	goal: 'The goal of the project is to develop (with a strong test coverage) an expert system and some applications to evaluate the point of extension';
	links: 'look at NeoPus could be interesting since it proposed to use objects for fact.';
	yourself.		
		
PharoTopic new
	name: 'Format as you type';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: 'formating AST PetitParser SmaCC';
	context: 'Automatic formatting code is really important.';
	goal: 'The goal of the project is to build a code formatter that will work when we type the code. One of the problem is how to deal with incomplete code. One idea is to use heuristics to propose some nodes to make the AST well-formed. One idea could be to one reformat after each space, or . A possible path is to see if this is possible to use the possible followers (in terms of petit parser) to complement the ast.';
	yourself.

PharoTopic new
	name: 'ARM AMSJIT';
	contact: 'igor.stasenko@inria.fr';
	supervisors: 'I. Stasenko and D. Pollet';
	keywords: 'assembly arm';
	context: 'ASMJIT is a key part of the Pharo infrastructure. It supports the generation of assembly code for X86.';
	goal: 'The goal of the project is to continue to work on the generation of ARM code from the Pharo image using the same approach as ASMJIT. This project is also important for NativeBoost the FFI library based on ASMJIT';
		yourself.

PharoTopic new
	name: 'Improving the code formatter';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and E. Lorenzano';
	keywords: 'formating AST PetitParser SmaCC';
	context: 'Automatic formatting code is really important. The current code formatter defines already many hooks';
	goal: 'The goal of the project is identify several configuration of the formatter and to propose a default one. Improving the edge cases is also part of the project';
	yourself.

PharoTopic new
	name: 'Omnipresent Code Manager';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and M. Dias';
	keywords: 'code representation change history browsing';
	context: 'Being able to look at all the versions of a method, class or package is an important feature. Right now Pharo contains a limited amount versions because the changes are condensed from time to time. The RMOD team is working on a new change model named Epicea and building tools on top. Epicea defines entities that represent changes as well as refactorings.';
	goal: 'The goal of the project is to help defining a source code manager. The goal of the project is to
	        - study Epicea (the new change model)
	        - improve the infrastucture around Epicea. For example we should be able to take a monticello repository and import all the changes into a local source manager.
	        - build tool to navigate version in the source manager.
	        - develop a service that supports the creation of a local or remote source manager. We could imagine that all the pharo programmers can have access to a remote source manager and that locally they can define local changes and that when a change is not found locally it is looked up over the internet. The design of the storage of the Epicea format should support that already.';
	yourself.

PharoTopic new
	name: 'Support for code review';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and M. Dias';
	keywords: 'code representation change history browsing spec';
	context: 'Pharo manages well source versions and modification. However it is tedious to understand changes made by other developers. Often during a programming session we split, changes existing code and we would like to be able to have feedback by other programmers. However giving a simple a list of changes can be really tedious for the reviewer: he will see that a method was changed and another was added for example.
 The RMOD team is working on a new change model named Epicea and building tools on top. Epicea defines entities that represent changes as well as refactorings.';
	goal: 'The goal of the project is to help building a tools to support code reviewing. In detail, here are some tasks to be performed.
		        - study Epicea (the new change model)
		        - define a tool to annotate changes and share annotations between different developers.
		        - build heuristics to identify changes that represents a unit (for example split methods and push up or push down).';
	yourself.

PharoTopic new
	name: 'Improving Strings manipulation';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and C. Bruni';
	keywords: 'string API';
	context: 'Pharo offers several good libraries to manipulate collections. However the Strings API could benefit from a new look and redesign.';
	goal: 'The goal of the project is to help rethinking the String manipulation API of Pharo.Here are some tasks to be performed.
		- look at Ruby library
		- build a set of example: how to get Soup out of ConfigurationOfSoup and ConfigurationOf
and how to get from http://smalltalkhub.com/mc/Pharo/XMLWriter/main to ttp://smalltalkhub.com/#!/~Pharo/XMLWriter
		- look at other collections protocols.';
	yourself.

PharoTopic new
	name: 'Stepping Interpreter';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'Clement Bera and Marcus Denker and Stephane Ducasse';
	keywords: 'AST interpreter';
	context: 'Since Pharo 30, an AST interpreter is available in Pharo. It is really interesting since we use it to build a test coverage tool in a couple of hours.';
	goal: 'Now the Pharo interpreter design prevents us to build a debugger (with a step by step behavior). The goal of this project is to transform the interpreter into an interpreter using an explicit stack so that the stack can be used to implement step by step program execution. The Amber interpreter is ';
	yourself.

PharoTopic new
	name: 'New Collections for Pharo';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'Stephane Ducasse';
	keywords: 'Collection DataStructure Benchmarks';
	context: 'Since Pharo 30, an AST interpreter is available in Pharo. It is really interesting since we use it to build a test coverage tool in a couple of hours.';
	goal: 'Smalltalk is proud of its collection hierarchy. However some collections are missing.
	The goal of this project is to select, implement and tests some missing collections.
	For example, we can think of:
	        - double linked list
	        - circular list
	        - immutable list, set, array
	        - Quadtree, Btree, Trie';
	Link:
'- Camillo Bruni master contains a chapter on how to benchmark for collections	        http://scg.unibe.ch/archive/masters/Brun11a.pdf
- http://source.lukas-renggli.ch/container started to implement some new collections for Pharo.
- http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-851-advanced-data-structures-spring-2010/lecture-notes/';
	yourself.

PharoTopic new
	name: 'Thread based programming';
	contact: 'esteban.lorenzano@inria.fr';
	supervisors: 'Esteban Lorenzano';
	keywords: 'process';
	context: 'Actually, in Pharo there is already an infrastructure for running thousand of process (green treads).';
	goal: 'Now there is small support for "thread based programming". What does it means? We do not have an easy way to: 
	- define tasks (probably Job class and around can help there)
	- scheduling tasks in a proper way (a.k.a. Round Robin)
	- communication between tasks
	- serialization/materialization of tasks (again, Fuel can help here)
	So, the idea is to have in Pharo the same infrastructure as Stackless Python [1][2] provides.

	What is this useful for? To allow an elegant way to deal with massive amounts of tasks (typical in games, for instance).';
	Link:
'http://www.stackless.com 
 http://www.slideshare.net/guest162fd90/stackless-python-101';
	yourself.

PharoTopic new
	name: 'Test to Fix first';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse and N. Anquetil';
	keywords: 'tools tests';
	context: 'When a bunch of tests are failing this is always a problem to know which one to fix first. In his PhD Markus Gaelli proposed a nice way to build a test fingerprint and to sort them.';
	goal: 'The goal of this project is to apply the idea of Gaelli and to propose a tool to help deciding which tests to fix';
	yourself.


PharoTopic new
	name: 'From BNF to PetitParser';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse and who wants';
	keywords: 'parsing';
	context: 'Petit Parser is a cool framework to build parsers and composed them but it lacks a way to import existing grammars defined in BNF.';
	goal: 'The goal of the project is to support the creation of parsers based on BNF description. Deep into Pharo contains a tutorial on PetitParser';
	yourself.

PharoTopic new
	name: 'Line level test coverage and which test to run';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse and who wants';
	keywords: 'testing';
	context: 'In some languages it is possible to know the tests that exercised on specific line of code.';
	goal: 'The goal of the project is to bring such kind of functionality to Pharo. The student should have a look at the current AST annotation facilities and at the reflexive AST level frameworks such reflectivity or bifrost and use them to build a tool that help understanding with tests passed into a given path. A simple test coverage browser was developed by clement bera and it should be looked at.';
	yourself.

PharoTopic new
	name: 'Wizard';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse and B. van Ryseghem';
	keywords: 'Wizard spec';
	context: 'Merlin is a good framework for building wizards. However, it was developed before Spec.';
	goal: 'The goal of the project is to make sure that Merlin is now based on Spec. It will make sure that Merlin can work on different UI framework.';
	yourself.

PharoTopic new
	name: 'Better pointer explorer';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse and I. Stasenko and B. van Ryseghem';
	keywords: 'ui spec';
	context: 'Understanding how objects points to each other is important to spot memory leaks.';
	goal: 'To understand how objects point to each other, Pharo offers the pointTo: methods. However it is a bit rudimentary. The goal of the project is to enhance the current pointer explorer to provide better information.';
	yourself.

PharoTopic new
	name: 'Memory profiler';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse and A. Bergel and (J.-F. Lefevre)';
	keywords: 'ui tool spec';
	context: 'Understanding how which method execution produces a lot of objects is important to spot design problem or cause of slowdown.';
	goal: 'The goal of the project is to develop an approach to measure and reflect memory cost. One idea is to use a kind of partial evaluation using an interpreter and redefine the primitives to collect the number of created objects. Pharo 30 already has a fully working interpreter that can be used for such tasks.';
	yourself.




"

More to come:
	Game frameworks	
	Revisiting OS Process
	Distribution Validation
	Game framework
	Python Moose Importer
	Benchmark Server
	Revisiting RBEnvironments S. Ducasse / Bruni

Epub for Pier exporter

	Pier (a Content Management System, or CMS) has a markup syntax that is easy to use and learn. There is a prototype that converts Pier syntax to HTML and LaTeX (to produce PDFs). The goal of this project is to improve this prototype with an export to the ePub format, used by e-readers.

Keywords: Pharo, Framework, HTML, PDF
Technology: Pier
Contact: Damien Cassou, St�phane Ducasse

==================================================================================
Improving the Pier exporter to HTML and LaTeX

Pier (a Content Management System, or CMS) has a markup syntax that is easy to use and learn. There is a prototype that converts Pier syntax to HTML and LaTeX (to produce PDFs). The goal of this project is to improve this prototype with more features: syntax highlighting of source code in HTML, label below pictures... A refactoring of the current source code will be critical to facilitate the addition of even more features.

Keywords: Pharo, Framework, HTML, PDF
Technology: Pier
Contact: Damien Cassou, St�phane Ducasse

==================================================================================


==================================================================================
ParseTree rewriter Enhancements

Keywords: 
Contact: C. Teruel and G. Decussi

==================================================================================

==================================================================================
FAMIXAST Unification



Keywords: Moose, Refactoring Browser, Program transformation

==================================================================================
SmallLint Assessment

Keywords: Framework, games, SameGame, Miner, Sokoban

==================================================================================

Trustworthy refactorings

Modern IDEs propose refactorings, some of them very complex. Some studies (see ECOOP'13 articles) tend to show that complex refactorings are underused because developers do not really understand how such refactorings will affect source code. These studies propose smaller refactorings that are much easier to understand and that can be easily composed to form complex refactorings that developers can trust. The goal of this project is to implement these refactorings in Pharo and to remove the most complex ones.

Keywords: Refactorings
Technology: Pharo
Contact: Damien Cassou
==================================================================================
Trashing mechanism

Desktop operating systems all offer a trash mechanism that allows one to recover a deleted file. Some desktop applications written in Pharo may benefit from this facility. The goal of this project is to let Pharo send files to the trashes of the supported operating systems (Linux, Mac OS X and Windows).

Keywords: Trash, OS
Technology: Pharo
Contact: Damien Cassou

==================================================================================
Git integration into Pharo

The goal of this project is to integrate Git within Pharo. The Git object model has already been implemented. The student will have to implement what is missing, that is to say:

the Git network protocol with good unit-tests (already started);
a new back-end for Monticello (Pharo's revision control system) that fetches from and saves to a Git repository (already started);
a simple graphical user interface (written in the Spec GUI framework) to manipulate Git repositories.
To fulfill the project's goal, the student will first have to learn Pharo, Git (and its underlying network protocol) and Spec.

Keywords


==================================================================================
File-permission handling

Pharo does not handle file permissions. For example, a developer can not be sure that a file is writable before trying to write to it (the #isWritable method does not take the current user into account to answer). The goal of this project is to write a set of methods to read and write file permissions.

Discussion about the topic: http://forum.world.st/Pharo-dev-FileSystem-Permissions-td4696735.html

Keywords: File System, OS
Technology: Pharo
Contact: Damien Cassou

==================================================================================
Web OpenStreet map manager

OpenStreet is an open source standard for high-quality maps. The goal of this project is to build a simple web application that let users managing their own maps like googlemap but in a
better way. An example could be http://umap.openstreetmap.fr/

Keywords: Web application
Technology: Amber/Pharo
Contact: S. Ducasse
==================================================================================
OpenStreet Smart viewer in Pharo

OpenStreet is an open source standard for high-quality maps. The goal of this project is to build a smart viewer of map using Athens the new canvas of Pharo. One of the challenge is to redraw only the part of the map when zooming in.

Keywords: Visualization
Technology: Pharo
Contact: S. Ducasse

==================================================================================
Supporting code stereotypes in Pharo

Code stereotypes are information encoder representing certain method properties (accessing state, accessor, accessing other objects...). They act as a fingerprints of methods and classes.
The idea of this project is to see how we can port the idea of stereotypes to a dynamic language like Pharo or Moose.

Keywords: Code analysis, tools, Pharo, spec, roassal
Links:
                - Alhindawi, N., Maletic, J.I., Dragan, N., Collard, M.L., Improving Feature Location by Enhancing Source Code with Stereotypes, in the Proceedings of the 29th IEEE International Conference on Software Maintenance (ICSM 13), Eindhoven, The Netherlands, Sept. 22-28, pp. (10 pages).
                - Dragan, N., Collard, M.L., Hammad, M., Maletic, J. I., Categorizing Commits Based on Method Stereotypes, in the Proceedings of the 27th IEEE International Conference on Software Maintenance (ICSM'11), Williamsburg, VA, USA, Sept 25 - Oct 1, 2011, pp. 520-523.
                - Ver�nica Uquillas G�mez, St�phane Ducasse and Theo D'Hondt, Visually Supporting Source Code Changes Integration: the Torch Dashboard, Proceedings of the 17th Working Conference on Reverse Engineering (WCRE'10), 55-64, 2010.
                - Dragan, N., Collard, M.L., Maletic, J. I., Automatic Identification of Class Stereotypes, in the Proceedings of the IEEE 26th IEEE International Conference on Software Maintenance (ICSM'10), Timisoara, Romania, Sept 12 - 18, 2010.
                - Romain Robbes, St�phane Ducasse and Michele Lanza, Microprints: A Pixel-based Semantically Rich Visualization of Methods, Proceedings of 13th International Smalltalk Conference, 131 157, 2005.

"
