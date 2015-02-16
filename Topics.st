{

PharoTopic new
	title: '7GUIs implementation';
	contact: '';
	supervisors: '';
	keywords: 'GUI learning-curve';
	context: 'Benchmarking how hard easy is to implement GUIs in a given platform is probably a decisive factor on how good the opportunities this plattform has to offer. The 7GUIs benchmark is a nice research on GUI building usability and having a Pharo implementation will illlustrate the power of this platform. Ref: https://github.com/eugenkiss/7guis/wiki';
	goal: 'Be able to see a Pharo implementation for 7GUIs';
	level: 'Intermediate';
	yourself
.

PharoTopic new
	title: 'Pro-tips site';
	contact: '';
	supervisors: '';
	keywords: 'social web-site';
	context: 'It might spark the beginning of a mentoring ecosystem. StackOverflow is great but at the same time for a niche like Smalltalk it might not be enough to show the problem-solving potential of the platform. A site dedicated to share pro tips centered on Pharo would slowly a steady show the platform’s value. The site has to be social friendly. Each tip should have an author that can set there StackOverflow, LinkedIn, facebook, twitter or any social profile she wants. Requires nice branding and UX/UI design. Optional variation of the same idea: make it for any Smalltalk dialect instead of only Pharo.';
	goal: 'Be able to sign up, compose tips, publish and share on social media';
	level: 'Intermediate';
	yourself
.

PharoTopic new
	title: 'GUI builder';
	contact: '';
	supervisors: '';
	keywords: 'GUI tooling';
	context: 'If whatever you are doing you cannot make it visual easily, people cannot perceive it easily. Due to evolutionary reasons, our brain has unfair bias towards visual processing. Lets make something that allows Pharo to create visual things easier. Something like PARTS or Dolphin Smalltalk GUI builder would be huge.';
	goal: 'Be able to create composable widgets for Pharo programs';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'REPL IDE';
	contact: '';
	supervisors: '';
	keywords: 'REPL IDE tooling';
	context: 'Smalltalkers are used to very powerful IDEs. What if we have to put Pharo in a really underpowered or monitorless device? Having a powerful REPL IDE that can evaluate expressions, inspect and debug, would empower users to still do things in mini-devices during the incoming tide wave of internet-of-things.';
	goal: 'Be able to evaluate expressions, inspect and debug Pharo programs using a REPL and a terminal';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'Cross platform native GUI';
	contact: '';
	supervisors: '';
	keywords: 'GUI';
	context: 'The web is fantastic but at the same time there is a big pressure to create great native applications due to the improved User Experience that the native widgets can provide. Making Pharo to create them via things like wxWidgets (https://www.wxwidgets.org/about/screenshots/) would instantly create opportunities to develop fast applications with a great UX.';
	goal: 'Be able to create and model native GUI from Pharo for OS X, Linux and Windows';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'Hadoop';
	contact: '';
	supervisors: '';
	keywords: 'big-data';
	context: 'Apache Hadoop can scale from single server to thousands of servers. The explosion of sensors, drones and mobile devices and printed devices with sensors are going to generate incredible amounts of data to process and model. Hadoop is a good fit for that and Pharo can empower faster modelling and orchestration of what to do with all that information stored in this widely adopted Hadoop technology.
http://wiki.apache.org/hadoop/PoweredBy';
	goal: 'Be able to use Hadoop from Pharo';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'Deep learning';
	contact: '';
	supervisors: '';
	keywords: 'deep-learning';
	context: 'Robotics, drones and the internet of things will gather data from sensors that will need interpretation and modelling. All sorts of AI will use deep learning techniques and Pharo would be a great orchestrator of that modelling.
http://www.quora.com/What-is-the-best-deep-learning-library-at-the-current-stage-for-working-on-large-data';
	goal: 'Be able to orchestrate deep learning operations from Pharo';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'Mobile';
	contact: '';
	supervisors: '';
	keywords: 'mobile vm';
	context: 'Is not that mobile is a growing market, is more like mobile is going supernova (http://a16z.com/2014/10/28/mobile-is-eating-the-world/). The power of Pharo and its libraries on mobile devices is currently perhaps one of its biggest opportunities to create a really productive environment in mobile.';
	goal: 'Opening Pharo images on a new mobile plattform';
	level: 'Advanced';
	yourself

.

PharoTopic new
	title: 'Remote Environments';
	contact: '';
	supervisors: '';
	keywords: 'distribution tooling';
	context: 'Remote Environments for Pharo being able to inspect, browse and debug reliably a server Pharo image from a client Pharo image would spark countless possibilities. Some of them: server maintenance; hot debug on GUI-less servers in production; live develop or debug remotely mobile devices that doesn’t have a server. Hot changes in Pharo powered drones and robots.';
	goal: 'Have an working version of remote tooling for Pharo';
	level: 'Advanced';
	yourself

.

PharoTopic new
	title: 'SQL Alchemy in Pharo';
	contact: '';
	supervisors: '';
	keywords: 'persistence database sql relational dsl';
	context: 'Big-data is a growing market that is easy to mine with a tool like Python’s SQL Alchemy. A Pharo version of such powerful tool would open this market opportunity for people wanting to offer Pharo-based solutions in this segment. Smalltalk’s syntax and tooling superiority could provide a significant push forward in this technology competitiveness because they might empower Pharo users to deliver solutions faster (ref: http://www.sqlalchemy.org/)';
	goal: 'Have a beta working version of a SQL Alchemy like framework in Pharo';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'SQLServer client';
	contact: '';
	supervisors: '';
	keywords: 'persistence database';
	context: 'Some Smalltalk applications that have SQLServer as dependency needs to extend and modernize features and while Pharo is a great platform to do that it is challenged by not having a practical SQLServer client that is suitable for production.';
	goal: 'Have a beta working version SQLServer client in Pharo';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'VOSS';
	contact: 'john.clapperton@ntlworld.com';
	supervisors: 'John Clapperton';
	keywords: 'persistence OODB';
	context: 'VOSS is a completely object oriented database industry proven that can have an open sourced release empowering Pharo users and startups to stay object oriented even when persisting data. VOSS has dual license commercial and GPLv3, and John (https://www.linkedin.com/in/johnclapperton), VOSS author already offered himself to mentor porters.';
	goal: 'Have a beta working version of VOSS on Pharo';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'Statistics Library';
	contact: 'serge DOT stinckwich AT ird DOT fr';
	supervisors: 'Serge Stinckwich';
	keywords: 'statistic mathematics science';
	context: 'Sci-Smalltalk is an existing Pharo library for doing scientific computing.';
	goal: 'Add some statistics function to Sci-Smalltalk.';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'Better Palette Support';
	contact: 'damien.pollet@inria.fr';
	supervisors: 'Damien Pollet and Alexandre Bergel';
	keywords: 'Color palette visualization';
	context: 'CubeHelix is a way to compute intensity of color that is important for color blind people. It was introduced in Pharo recently. Now we should revisit the color palette to offer some predefined palette and better support for Colors.';
	goal: 'The objectives is to revisit and build a new palette behavior';
	level: 'Beginner';
	yourself

.

PharoTopic new
	title: 'Rethinking OSProcess Integration';
	contact: 'esteban.lorenzano@inria.fr';
	supervisors: 'Esteban Lorenzano (and Damien Pollet)';
	keywords: 'OS VM';
	context: 'We need a way to invoke OS low-level functionality from the language. This will let programmers develop scripts in Pharo and integrate better with the OSes';
	level: 'Advanced';
	yourself
	
.

PharoTopic new
	title: 'Enhancing file ownership';
	contact: 'jean-christophe.bach@inria.fr';
	supervisors: 'Jean-Christophe Bach, Damien Cassou and Esteban Lorenzano';
	keywords: 'OS VM';
	context: 'We should enhance the support for file permissions: to answer, e.g., can the current VM read this file? The new mechanism must work on all currently supported platforms (Linux, Mac OS X, Windows). Other platforms such as Java and Ruby might provide inspiration.  http://forum.world.st/Pharo-dev-FileSystem-Permissions-td4696735.html';
	level: 'Advanced';
	yourself
.

PharoTopic new
	title: 'Better Message Browser';
	contact: 'jfabry@dcc.uchile.cl';
	supervisors: 'Johan Fabry / S. Ducasse';
	keywords: 'tools ui spec';
	context: 'The browser showing results of senders and implementors won''t help you navigate in the call chain. Often we want to perform a sender on a message and would like to see if there are senders of the senders. This is typically interesting when doing cleaning.';
	goal: 'The goal of the project is to define a tool to support message browsing.';
	level: 'Intermediate';
	yourself
	
.

PharoTopic new
	title: 'Bug Importer for Moose';
	contact: 'nicolas.anquetil@inria.fr';
	supervisors: 'N. Anquetil';
	keywords: 'bugs modeling tools moose analyses';
	context: 'Moose (http://www.moosetechnology.org) is a well-know and successful platform to support data and software analysis development.';
	goal: 'Moose can be connected with a JIRA bug tracker database. The goals of the project are:
	        (1) learn and/or revisit the bug metamodel
	        (2) improve the bug to code mapping heuristics - How do we know that a method was touched by a bug. Probably we will have to develop a set of strategies that can cope with the practices of different communities and bugtrackers.
	        (3) add different bug trackers as input to Moose (e.g., Fogbugz, Trac, Redmine). The idea is to build a library of importers so that we can import bug information from different bug trackers.
	        (4) Enhance the visualizations and tools proposed in Moose.
	Note that contacting Tommaso del Sasso from Lugano can be a good idea since he is doing his PhD on bugs and building a dashboard for Pharo bug activity. tommaso.dal.sasso@usi.ch
	Links: 
A. Hora, N. Anquetil, S. Ducasse, M. Bhatti, C. Couto, M. Tulio Valente and J. Martins, BugMaps: A Tool for the Visual Exploration and Analysis of Bugs, Proceedings of the 16th European Conference on Software Maintenance and Reengineering (CSMR12) - Tool Demonstration Track, 2012' ;
	yourself

.

PharoTopic new
	title: 'A Hot Recommander for Pharo';
	contact: 'yuriy.tymchuk@usi.ch';
	supervisors: 'Yuriy Tymchuk';
	keywords: 'recommander tools rules analyses';
	context: 'Applying SmallLint rules is a task that often arrives late in the development process.';
	goal: 'The goal of this project is to build a recommander system that can execute after each compilation a set of rules on the edited code. The set of rules may adapt by taking into account the choices of the programmer. The tasks for this project could be: (1) add a menu (so that the system stay modular) to execute rules from the MonticelloBrowser, (2) build a recommander that executes a set of rules (3) taking into account the manifest of the package to filter out rules, (4) make sure that we can open the critics browser on the results. (5) Offer a way to select the rules that are executed on the fly ';
	candidate: 'Facundo Mainere fmmainere@gmail.com from Uni. National Quilmes under supervision of G. Arevalo';
	yourself
	
.
	
PharoTopic new
	title: 'An Expert System Framework';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: 'Expert systems';
	context: 'There is a need for an expert system framework on top of Pharo. Several projects could benefit from it: recommander, moose, robotics, drgeo.';	goal: 'The goal of the project is to develop (with a strong test coverage) an expert system and some applications to evaluate the point of extension. Links: look at NeoPus (it proposes to use objects for facts).';
	level: 'Intermediate';
	yourself

.
		
PharoTopic new
	title: 'Format as you type';
	contact: 'marcus.denker@inria.fr';
	supervisors: 'Marcus Denker and S. Ducasse';
	keywords: 'formating AST PetitParser SmaCC';
	context: 'Automatic formatting of code is really important.';
	goal: 'The goal of the project is to build a code formatter that will work when we type the code. One of the problem is how to deal with incomplete code. One idea is to use heuristics to propose some nodes to make the AST well-formed. One idea could be to reformat after each space or dot. A possible path is to see if this is possible to use the potential followers (in terms of Petit Parser) to complement the AST.
(1) Studying the default static formatter of Pharo, (2) Studying Petit Parser, (3) Adding a special error handling to Petit Parser, (4) Experiment and selecting heuristics';
	level: 'Advanced';
	yourself
	
.	

PharoTopic new
	title: 'Improving the code formatter';
	contact: 'marcus.denker@inria.fr';
	supervisors: 'Marcus Denker';
	keywords: 'formating AST PetitParser SmaCC';
	context: 'Code formatting is really important.';
	goal: 'The goal of the project is to enhance the current code formatter.
(1) Studying the default static formatter of Pharo, (2) Extending it to take into account selector length, (3) Write some tests to characterize specific versions, (4) Improving the edge cases.';
	level: 'Intermediate';
	yourself
	
.	

PharoTopic new
	title: 'ARM ASMJIT';
	contact: 'siguctua@gmail.com';
	supervisors: 'I. Stasenko';
	keywords: 'assembly arm';
	context: 'ASMJIT is a key part of the Pharo infrastructure. It supports the generation of assembly code for X86.';
	goal: 'The goal of the project is to continue to work on the generation of ARM code from the Pharo image using the same approach as ASMJIT. It should use the Virtual CPU. This project is also important for NativeBoost the FFI library based on ASMJIT';
	level: 'Advanced';
	yourself

.	


PharoTopic new
	title: 'Improving code completion';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and E. Lorenzano';
	keywords: 'completion';
	context: 'Automatic completion is really important. The current code completion already defines some good behavior but 
it can do better.';
	goal: 'The goal of the project is to improve the ecompletion infrastructure: The tasks are: (1) study the existing approaches (NOC and NEC), (2) Write some tests to characterize specific behavior, (3) Improve the noise introduced by the Symbol table usage. (4) build more heuristics.';
	level: 'Intermediate';
	yourself
	
.

PharoTopic new
	title: 'Omnipresent Code Manager';
	contact: 'martin.dias@inria.fr';
	supervisors: ' M. Dias and S. Ducasse';
	keywords: 'code representation change history browsing';
	context: 'Being able to look at all the versions of a method, class or package is an important feature. Right now Pharo contains a limited amount versions because the changes are condensed from time to time. The RMOD team is working on a new change model named Epicea and building tools on top. Epicea defines entities that represent changes as well as refactorings.';
	goal: 'The goal of the project is to help defining a source code manager. The goal of the project is to
	        - study Epicea (the new change model)
	        - improve the infrastucture around Epicea. For example we should be able to take a monticello repository and import all the changes into a local source manager.
	        - build tool to navigate version in the source manager.
	        - develop a service that supports the creation of a local or remote source manager. We could imagine that all the pharo programmers can have access to a remote source manager and that locally they can define local changes and that when a change is not found locally it is looked up over the internet. The design of the storage of the Epicea format should support that already.';
	yourself
	
.	

PharoTopic new
	title: 'Support for change code review';
	contact: 'martin.dias@inria.fr';
	supervisors: ' M. Dias and S. Ducasse';
	keywords: 'code representation change history browsing spec';
	context: 'Pharo manages well source versions and modification. However it is tedious to understand changes made by other developers. Often during a programming session we split, changes existing code and we would like to be able to have feedback by other programmers. However giving a simple a list of changes can be really tedious for the reviewer: he will see that a method was changed and another was added for example.
 The RMOD team is working on a new change model named Epicea and building tools on top. Epicea defines entities that represent changes as well as refactorings.';
	goal: 'The goal of the project is to help building a tools to support code reviewing. In detail, here are some tasks to be performed: (1) study Epicea (the new change model), (2) define a tool to annotate changes and share annotations between different developers, (3) build heuristics to identify changes that represents a unit (for example split methods and push up or push down).';
	level: 'Intermediate';
	yourself
	
.

PharoTopic new
	title: 'Improving String manipulation';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and D. Pollet';
	keywords: 'string API';
	context: 'Pharo offers several good libraries to manipulate collections. However, the Strings API could benefit from a new study and redesign or enhancements.';
	goal: 'The goal of the project is to help rethinking the String manipulation API of Pharo. Here are some tasks to be performed.
		(0) Identify the elementary operations on Strings.
		(1) Look at Ruby library and Python library
		(2) Study the current Pharo string library.
		(3) Build a set of examples. For example, how to get ''Soup'' out of ''ConfigurationOfSoup'' or 
how to transform from ''http://smalltalkhub.com/mc/Pharo/XMLWriter/main'' to ''http://smalltalkhub.com/#!/~Pharo/XMLWriter''. The student is invited to ask the community for their needs too.
		(4) Propose some new messages to enhance or replace current Pharo
		(5) The work could also include writing a nice chapter for a future Pharo book';
	level: 'Bachelor or Master';
	yourself
	
.	

PharoTopic new
	title: 'Stepping Interpreter';
	contact: 'clement.bera@inria.fr';
	supervisors: 'Clement Bera and Marcus Denker';
	keywords: 'AST interpreter';
	context: 'Since Pharo 30, an AST interpreter is available in Pharo. It is really interesting since we use it to build a test coverage tool in a couple of hours.';
	goal: 'Now the Pharo interpreter design prevents us to build a debugger (with a step by step behavior). The goal of this project is to transform the interpreter into an interpreter using an explicit stack so that the stack can be used to implement step by step program execution. The Amber interpreter is a stepping interpreter and a good source of inspiration.';
	level: 'Advanced';
	yourself
	
.

PharoTopic new
	title: 'New Collections for Pharo';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'Stephane Ducasse';
	keywords: 'Collection DataStructure Benchmarks';
	context: 'Since Pharo 30, an AST interpreter is available in Pharo. It is really interesting since we use it to build a test coverage tool in a couple of hours.';
	goal: 'Smalltalk is proud of its collection hierarchy. However some collections are missing.
	The goal of this project is to select, implement and tests some missing collections.
	For example, we can think of: (1) double linked lists, (2) circular list, (3) immutable list, set, array, (3) quadtree, Btree, Trie
	Links:
- Camillo Bruni master contains a chapter on how to benchmark for collections http://scg.unibe.ch/archive/masters/Brun11a.pdf
- http://source.lukas-renggli.ch/container started to implement some new collections for Pharo.
- http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-851-advanced-data-structures-spring-2010/lecture-notes/';
	level: 'Advanced';
yourself

.

PharoTopic new
	title: 'Thread-based programming';
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

	What is this useful for? To allow an elegant way to deal with massive amounts of tasks (typical in games, for instance).
	Link: http://www.stackless.com 
 http://www.slideshare.net/guest162fd90/stackless-python-101';
yourself

.

PharoTopic new
	title: 'Test to Fix first';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse and N. Anquetil';
	keywords: 'tools tests';
	context: 'When a bunch of tests are failing this is always a problem to know which one to fix first. In his PhD Markus Gaelli proposed a nice way to build a test fingerprint (based on which methods were invoked in a test) and to sort them.';
	goal: 'The goal of this project is to apply the idea of Gaelli and to propose a tool to help deciding which tests to fix';
	level: 'Intermadiate';
yourself

.

PharoTopic new
	title: 'From BNF to PetitParser';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'who wants';
	keywords: 'parsing';
	context: 'Petit Parser is a cool framework to build parsers and composed them but it lacks a way to import existing grammars defined in BNF.';
	goal: 'The goal of the project is to support the creation of parsers based on BNF description. Deep into Pharo contains a tutorial on PetitParser';
yourself

.

PharoTopic new
	title: 'Line level test coverage and which test to run';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'who wants';
	keywords: 'testing';
	context: 'In some languages it is possible to know the tests that exercised on specific line of code.';
	goal: 'The goal of the project is to bring such kind of functionality to Pharo. The student should have a look at the current AST annotation facilities and at the reflexive AST level frameworks such reflectivity or bifrost and use them to build a tool that help understanding with tests passed into a given path. A simple test coverage browser was developed by clement bera and it should be looked at.';
yourself

.

PharoTopic new
	title: 'Merlin in Spec';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse and Johan Fabry';
	keywords: 'Wizard spec';
	context: 'Merlin is a good framework for building wizards. However, it was developed before Spec.';
	goal: 'The goal of the project is to make sure that Merlin is now based on Spec. It will make sure that Merlin can work on different UI framework.';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'Better pointer explorer';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: 'ui spec';
	context: 'Understanding how objects points to each other is important to spot memory leaks.';
	goal: 'To understand how objects point to each other, Pharo offers the pointTo: methods. However it is a bit rudimentary. The goal of the project is to enhance the current pointer explorer to provide better information.';
	level: 'Intermediate';
	yourself
	
	.

PharoTopic new
	title: 'Memory profiler';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'A. Bergel and S. Ducasse';
	keywords: 'ui tool spec';
	context: 'Understanding how which method execution produces a lot of objects is important to spot design problem or cause of slowdown.';
	goal: 'The goal of the project is to develop an approach to measure and reflect memory cost. One idea is to use a kind of partial evaluation using an interpreter and redefine the primitives to collect the number of created objects. Pharo 30 already has a fully working interpreter that can be used for such tasks.';
	level: 'Intermediate';
yourself

.


PharoTopic new
	title: 'Epub generator for Pillar';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou and S. Ducasse';
	keywords: 'Pillar epub document tree visitor';
	context: 'Pillar is a markup syntax that is easy to use and learn. This markup syntax generates a document tree. Pillar can export to HTML, LaTeX (to produce PDFs) and Markdown. Pillar has already been used in several projects (http://www.smalltalkhub.com/#!/~Pier/Pillar)' ;
	goal: 'The goal of this project is to add the ePub export format (used by e-readers).';
	level: 'Beginner';
	candidate: '';
	yourself
	
.


PharoTopic new
	title: 'Enhancing Pillar';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou and S. Ducasse';
	keywords: 'Pillar epub Document tree visitor';
	context: 'Pillar is a markup syntax that is easy to use and learn. This markup syntax generates a document tree. Pillar can export to HTML, LaTeX (to produce PDFs) and Markdown. Pillar has already been used in several projects (http://www.smalltalkhub.com/#!/~Pier/Pillar)' ;
	goal: 'The goal of this project is to enhance Pillar with many behavior. Damien has a long list of feature requests.';
	level: 'Beginner';
	candidate: '';
	yourself	
.

PharoTopic new
	title: 'Improving Launcher';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou, B. Coman and S. Ducasse';
	keywords: 'Launcher is a cool tool to launch and organize images';
	context: 'Launcher is important for all both new and advances Pharo users. Launcher needs to get improved in several areas: configuration management, image storage, friendliness. Damien has a long list of important features to implement. Demonstration: https://www.youtube.com/watch?v=fNim2Yxs320.
';
	level: 'Beginner';
	candidate: '';
	yourself
	
.

PharoTopic new
	title: 'ParseTree Rewriter Improvements';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'C. Teruel and S. Ducasse';
	keywords: 'AST tree visitor';
	context: 'The Parse tree rewriter is a powerful engine. It is used to support automatic rewriting of program and it is the basis of the refactoring engine. It is based on a unification algorithm that unifies
	trees with meta variables to abstract syntax trees.' ;
	goal: 'The goal of this project is to revisit the API of the Parse Tree Rewriter to help people build better tools. Reading the Flamel GSOC project and the new book chapter on such tools is a good start.';
	level: 'Advanced';
	yourself
	
.

PharoTopic new
	title: 'Git Library for Pharo in Pharo';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou and Max Leske';
	keywords: 'Protocol GIT';
	context: 'Git is becoming the defacto standard for managing source code and versioning them.' ;
	goal: 'The goal of this project is to continue the development of the git library that can let Pharo talk directly to a git server.  The student will have to implement what is missing, that is to say: the Git network protocol with good unit-tests (already started). The first task will be look at the current effort and then study the python implementation as well as reading the specification.';
	level: 'Intermediate';
        candidate: 'Max Leske';
	yourself
	
.

PharoTopic new
	title: 'Git integration for Pharo';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou and Max Leske';
	keywords: 'Protocol GIT';
	context: 'Git is becoming the defacto standard for source code versioning.';
	goal: 'The goal of this project is to continue the development of FileTree and GitTree two projects that offer the possibilities to store Git sources in Git. The goal of this project is to integrate Git within Pharo. The Git object model has already been implemented. The student will have to develop: (1) a new back-end for Monticello (Pharo''s revision control system) that fetches from and saves to a Git repository (already started); (2) a simple graphical user interface (written in the Spec GUI framework) to manipulate Git repositories. To fulfill the project''s goal, the student will first have to learn Pharo, Git (and its underlying network protocol) and Spec.';
	level: 'Advanced';
        candidate: 'Max Leske';
	yourself
	
.

PharoTopic new
	title: 'Taking advantage of roel Typer in tools';
	contact: 'stephane.ducasse@inria.fr, camille.teruel@inria.fr';
	supervisors: 'S. Ducasse, C.Teruel';
	keywords: 'type inferencer tool';
	context: 'Getting the type of variables and expression is a useful information.';
	goal: 'The goal of this project is to see tools can take benefit of type information provided by RoelTyper. For example we can have a pane with the instance variable type annotations, rules can check the use of a variable across multiple methods.';
	level: 'Intermediate';
	yourself
	
.

PharoTopic new
	title: 'OpenStreet Smart viewer in Pharo';
	contact: '';
	supervisors: '';
	keywords: 'svg open street visualisation';
	context: '	OpenStreet is an open source standard for high-quality maps.';
	goal: 'The goal of this project is to build a smart viewer of map using Athens the new canvas of Pharo. One of the challenge is to redraw only the part of the map when zooming in.';
	yourself
	
.

PharoTopic new
	title: 'Web OpenStreet map manager';
	contact: '';
	supervisors: '';
	keywords: 'svg open street visualisation web amber seaside';
	context: '	OpenStreet is an open source standard for high-quality maps.';
	goal: 'The goal of this project is to build a simple web application that let users managing their own maps like googlemap but in a better way. An example could be http://umap.openstreetmap.fr/';
	yourself
.

PharoTopic new
	title: 'Sokoban';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: ' Games SameTile Miner Sokoban';
	context: 'There is an implementation of the Sokoban game in Pharo.  However there is not a clear separation between the game model and its graphical representation.';
	goal: 'The goal of this project is to revisit the implementation to make sure that the game is defined
via a model that can then be displayed graphically. Right now the logic of the game is mixed with its graphical representation. 	The tasks can be: (1)	Understand the actual implementation, (1) start to see how we could have a model that does not depend on Morphic, (3) implement this new game. 
	A nice following project would be to see how we can create a framework to build games such as Same Tile, Miners and that would make easier the definition of board games';
	level: 'Beginner or Bachelor';
	yourself
	
.

PharoTopic new
	title: 'SameTile';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: 'Games SameTile Miner Sokoban';
	context: 'There is an implementation of the SameGame game in Pharo. However there is not a clear separation between the game model and its graphical representation.';
	goal: 'The goal of this project is to revisit the implementation to make sure that the game is defined
	via a model that can then be displayed graphically using different ways.  The tasks can be: (1)	Understand the actual implementation, (1) start to see how we could have a model that does not depend on Morphic, (3) implement this new game. 
	A nice following project would be to see how we can create a framework to build games such as Same Tile, Miners and that would make easier the definition of board games';
	level: 'Beginner or Bachelor';
	yourself
.

PharoTopic new
	title: 'Tetris';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: ' games SameTile Miner Sokoban';
	context: 'There is an implementation of the Tetris game in Pharo. However there is not a clear separation between the game model and its graphical representation.';
	goal: 'The goal of this project is to revisit the implementation to make sure that the game is defined
	via a model that can then be displayed graphically using different ways.  The tasks can be: (1)	Understand the actual implementation, (1) start to see how we could have a model that does not depend on Morphic, (3) implement this new game. 
	A nice following project would be to see how we can create a framework to build games such as Same Tile, Miners and that would make easier the definition of board games';
	yourself
.
	
PharoTopic new
	title: 'Miner';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: 'Game SameGame Miner Sokoban';
	context: 'There is an implementation of the Miner game in Pharo. However there is not a clear separation between the game model and its graphical representation.';
	goal: 'The goal of this project is to revisit the implementation to make sure that the game is defined
	via a model that can then be displayed graphically using different ways. The tasks can be: (1)	Understand the actual implementation, (1) start to see how we could have a model that does not depend on Morphic, (3) implement this new game. 
	A nice following project would be to see how we can create a framework to build games such as Same Tile, Miners and that would make easier the definition of board games';
	yourself
.


PharoTopic new
	title: 'Clean Debian packaging';
	contact: 'mfritsche@reauktion.de';
	supervisors: 'Markus Fritsche';
	keywords: 'packaging debian linux';
	context: 'Debian is a well-known and free Operating System (OS) consisting of tens of thousands of packages.';
	goal: 'The goal of this project is to improve current packaging of Pharo for Debian and to follow the new Debian maintainer process to get Pharo included in Debian.';
	level: 'Beginner';
	yourself

.

PharoTopic new
	title: 'Baobab';
	contact: 'camille.teruel@inria.fr';
	supervisors: 'C. Teruel';
	keywords: 'AST IDE annotation social-coding';
	context: 'Pharo sources are currently stored in a separated file. Bonsai, the future system for persistent and compressed ASTs will replace this file to store all the sources in the image. Moreover, the nodes of the ASTs can be annotated with various informations (bindings, additional comments, discussions, false positive critics, debugging code, typing information for various pluggable type systems, statistics like code coverage, etc...).';
	goal: 'All these annotations would take too much space in the image. Moreover, not all of them are needed by all developers. The goal of Baobab is to store these annotations on remote repositories so that teams of developers can share and edit them.';
	level: 'intermediate';
	yourself



.

PharoTopic new
	title: 'Tools for the Counch Module System';
	contact: 'camille.teruel@inria.fr';
	supervisors: 'C. Teruel and S. Ducasse';
	keywords: 'Module';
	context: 'C. Teruel designed and implemented Conch a new module system for Pharo. In Conch class extensions are local to the classes defining them. ';
	goal: 'The goal of the project is to build tool support for Conch. In particular we want to have method extensions to be only visible from the importing packages. A module or class browser should reflect this behavior. We should take Pharo and turn the packages into their Conch counterpart to see how it feels.';
	level: 'intermediate';
	yourself

. 

PharoTopic new
	title: 'New generation finder';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'C. Teruel and S. Ducasse';
	keywords: 'Finder';
	context: 'The finder is a nice tool that let us find the messages based on the receiver and arguments. While really powerful its implementation should be revisited because ';
	goal: 'The actual implementation of the finder is based on static arrays to describe methods. This implementation is static. We should revisit this implementation. Methods may be tagged with Finder information.';
	level: 'intermediate';
	yourself
	
. 

PharoTopic new
	title: 'SUnit compiler';
	contact: 'yuriy.tymchuk@usi.ch';
	supervisors: 'Yuriy Tymchuk';
	keywords: 'opal sunit';
	context: 'Pharo is a modern pure object-oriented language and a live programming environment inspired by Smalltalk. This project is focused on two frameworks of Pharo: Opal and SUnit. First one is a modular compiler which can be easily extended. Because Pharo is very flexible one can define a specific compiler for a class, which will be used to compile all methods of the class. SUnit is a unit-testing framework (which is also first in its kind). Pharo''s syntax is very simple and can fit on a post card. To achieve this, language was designed in a way that focuses only on the core concepts of object-oriented programming. For example there are no direct field accessors as they break the whole concept of encapsulation. While this is good for software design, some parts like unit tests may benefit from direct access to the state of an object.';
	goal: 'subclass the default compiler and add an expression(s) to access internal state of an object. Then use this functionality to demonstrate how unit tests can be written in a way that uses direct access to the internal state of an object.';
	level: 'intermediate';
	yourself
	
. 

PharoTopic new
	title: 'Revisiting Environments';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and Yuriy Tymchuk';
	keywords: 'environments scoping ';
	context: 'In Pharo we have three ways to scope queries: RBEnvironment, SystemNavigation, and SystemDictionary. We should revisit the environments (to scope classes in the system)';
	goal: 'The goal of this project is to design a new environment to support system querying.  The tasks are 
(1) Studying RBEnvironment, SystemDictionary and SystemNavigation(2) Implement a new environment hierarchy, (SystemDictionary could be a leave in the hierarchy.  Write many tests and experiment with scenario.
(3) Experiment and study the impact on the existing system';
	level: 'intermediate';
	yourself	
	
}

"
More to come:
	Game frameworks	
	Revisiting OS Process
	type inferencer
	Mercury
	Code review
	
	Distribution Validation
	Python Moose Importer
	Benchmark Server
	Revisiting RBEnvironments S. Ducasse / Bruni
	Metacello validation
        A visual code browser (Damien C)


==================================================================================
FAMIXAST Unification



Keywords: Moose, Refactoring Browser, Program transformation

==================================================================================
SmallLint Assessment

Keywords: Framework, games, SameGame, Miner, Sokoban

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
