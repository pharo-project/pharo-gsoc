PharoTopic new
title: 'IPFS for Pharo';
contact: 'marcus.denker@inria.fr';
supervisors: 'marcus.denker@inria.fr';
keywords: 'peer to peer file systems';
context: ' IPFS is a peer-to-peer distributed file system that seeks to connect all computing devices with the same system of files. In some ways, IPFS is similar to the Web, but IPFS could be seen as a single BitTorrent swarm, exchanging objects within one Git repository. In other words, IPFS provides a high throughput content-addressed block storage model, with content-addressed hyperlinks. This forms a generalized Merkle DAG, a data structure upon which one can build versioned file systems, blockchains, and even a Permanent Web. IPFS combines a distributed hashtable, an incentivized block exchange, and a self-certifying namespace. IPFS has no single point of failure, and nodes do not need to trust each other.

IPFS right now is implemented as a server process in Go and allows the global file system to be mounted as a user space filesystem. In addition, the server provides an API.
A real integration of IPFS with Pharo would require a complete implementation of IPFS in Pharo (projects are already in early stages to implement it in JavaScript and Python).
But the client API allows us already now to do experiments and assess the usefulness of IPFS in the context of Pharo. 
More information:

	https://ipfs.io

';
goal: 'The goal of this Project is to implement a IPFS client library using the API to communicate with the existing server and start to experiment
how IPFS can be used with Pharo. For example, extend the launcher to load images via IPFS, distribute the files of smalltalkhub or provide
access to resources via IPFS.'; 
level: 'Normal';
yourself

.


PharoTopic new
title: 'Make for Pharo in Pharo';
contact: 'stephane.ducasse@inria.fr';
supervisors: 'stephane.ducasse@inria.fr';
keywords: 'Make graph';
context: '
Make is a unix tool to express dependencies between task. Now it is not really cross-platform. Python has a library that implements make on 
top of a graph library. It would be really nice to have a solution for Pharo using the same idea.
- http://aosabook.org/en/500L/contingent-a-fully-dynamic-build-system.html
MCHttpRepository
	location: ''http://smalltalkhub.com/mc/CipT/MelcGraph/main''
	user: ''''
	password: ''''

';
goal: 'The goal of this project is to develop a make like implementation in Pharo using the graph library MelcGraph developed by C. Teodorov.'; 
level: 'Normal';
yourself

.

PharoTopic new
title: 'Scrapping Data: Enhancing User Experience';
contact: 'stephane.ducasse@inria.fr';
supervisors: 'stephane.ducasse@inria.fr';
keywords: 'CVS ';
context: '';
goal: 'To analyze data, you need to get data in first. So, one may want to read - say -
a CSV, and have a number of heuristics, such as:
- autodetection of encoding
- autodetection of quotes and delimiter
- autodetection of columns containing numbers or dates
- the possibility to indicate that some markers, such as "N/A",
represent missing values
- the possibility to indicate a replacement for missing values, such
as 0, or "", or the average or the minimum of the other values in the
colums

See http://pandas.pydata.org/pandas-docs/version/0.15.2/io.html#csv-text-files for some examples.
It may be worth to consider making this into a sequence that is read and processed lazily, to deal with CSV files bigger than memory.

When data is finally in, usually the first task is doing some processing, inspection or visualization. The Smalltalk collections are
good for processing (although some lazy variants might help), and Roassal and the inspectors are perfect for visualization and browsing.

It could be extended as follows: The second part comes the time when one wants to run some algorithm. While there is no need to have the fanciest ones, there should be some
of the basics, such as:
- some form or regression (linear, logistic...)
- some form of clustering (kmeans, dbscan, canopy...)

Another thing which would be useful is support for linear algebra, leveraging native libraries such as BLAS or LAPACK.

Ideally, I would include also some tutorials, for instance for dealing with standard problems such as Kaggle competitions. Here I think
Smalltalk would have an edge, since these tutorial could be in the form of Prof Stef. Still, it would be nice if some form of the tutorials was also on the web, which makes it discoverable.
';
level: 'Normal';
yourself

.

PharoTopic new
title: 'Loading V3 ImageSegments in Spur';
contact: 'eliot.miranda@gmail.com';
supervisors: 'Bert Freudenberg, Eliot Miranda';
keywords: 'Pharo ImageSegments Spur';
context: 'ImageSegments are a fast binary storage and loading facility for Pharo.  
They are supported directly by the virtual machine and use the garbage collector''s tracing machinery 
to construct the objects to be saved.  They also contain objects in the native heap format of the virtual machine.  
Amongst other things, ImageSegments have been used for eToys to store student projects.  
There are literally thousands of eToys projects stored in ImageSegments in the format of the current VM.  
Spur is a new object representation for the Squeak and Pharo V M that offers more functionality and approximately 
twice the performance than the existing VM.';
goal: 'The goal is to allow ImageSegments written by the current VM version, or older VM versions, 
to be loaded into a system running on the Spur VM.  
The project would be written entirely in Smalltalk, without VM support, 
and have the goal of being able to load old projects in this faster system.';
level: 'Advanced';
yourself
.

PharoTopic new
	title: 'Two-way synchronized code changes, better support for cross-platform co-development ';
	contact: 'stephan@stack.nl';
	supervisors: 'Stephan Eggermont, Diego Lont';
	keywords: '';
	context: 'Glorp is originally maintained in VisualWorks. We now have a version 
in Pharo that is forked. It would be nice if we could make sure that 
changes can be synchronized. The rewriting engine is available 
on both platforms, and Glorp has a large number of unit tests. 
If we can describe both migrations with refactorings, 
we should be able to create builds in ci for both that show 
when changes break things and otherwise synchronize two-way. 

This might also be beneficial for Roassal2 and Seaside, that 
currently use a compatibility layer. 

Another place where this rewriting can be useful would be 
in maintaining compatibility between Squeak and Pharo, 
and in making it easier keeping older code alive. 

Marcel Taeumel has written a number of interesting applications 
(UIBuilder, Widgets, XPForums) using a ''signals'' style 
communication. In Pharo it would make sense to have them 
use Announcements. 
';
	goal: 'Two-way synchronized code changes, 1st target: GLORP';
	level: 'Advanced';
	yourself
.

PharoTopic new
	title: 'Mailing List Application in Brick';
	contact: 'stephan@stack.nl';
	supervisors: 'Stephan Eggermont';
	keywords: 'Tools';
	context: 'Making it possible to access and search the relevant mailing lists from inside any image 
	provides a better feedback loop, especially for new smalltalkers';
	goal: 'Have a spotter-like search for the mailing list archives, 
	make it easy to read and answer questions. Implement using Brick.';
	level: 'Intermediate';
	yourself
.

PharoTopic new
	title: 'Torrent Library for Pharo';
	contact: 'stephan@stack.nl jdelgado@cs.upc.edu';
	supervisors: '';
	keywords: 'P2P';
	context: 'It is time to stop depending on centralized infrastructure. We need to be able to use our DVCS the way it is meant to be used. On smalltalkhub BitDevTalk/BitTalk there is an implementation of the torrent protocol. Some parts (DHT) are not finished. On top of that, we want to be able to distribute our build artifacts and publish our public source.  ' ;
	goal: 'Finish and extend the library. Add a monticello repository type ';
	level: 'Intermediate';
        candidate: '';
	yourself
.

PharoTopic new
	title: 'Distributed Issue Tracker';
	contact: 'stephan@stack.nl';
	supervisors: 'Stephan Eggermont, Diego Lont';
	keywords: 'P2P Tools GUI';
  	context: 'Technical Details

The recent decision by Google to deprecate and stop its API for the Google Issue Tracker used by a.o. the Pharo, Seaside, MOOSE and Metacello projects makes it necessary for those projects to select a different issue tracker. The timespan before this decision has to be made is too short for the development of a new issue tracker from scratch. 

Now most development in Smalltalk uses distributed version control systems, either Monticello or Git, the question arises why these projects still would want to use a centralized issue tracker. The long-standing problems in keeping squeaksource up-and-running are only one example of the problems of depending on centralized infrastructure. Other examples are the move of Lukas'' repository and the number of times where the Pharo CI infrastructure was not available, especially on holidays and weekends.

The currently used issue trackers cannot work disconnected. Integrating the issue tracker in the CI workflow of the projects is crucial.

The goals of the persona should be translated into a storymap. Delivery should be iterative and incremental, driven by value to the community and technical risk. The student is expected to be active on the mailing list and discuss development there. This includes handling (source) contributions by others.

There is a small prototype available. 

Benefits to the Student

getting to know the difficulties of issue tracking/the workflow of open source projects
experience with distributed systems
experience an agile open source environment
Benefits to the Community

better integrated workflow
native issue tracker, accessible both in-image, web and automated
showcase for productive environment  ';
	goal: 'A native smalltalk distributed issue tracker. It should have basic issue tracking functionality including attaching files/pictures/code. It should have a native interface, a web interface and a scripting API. Primary development is in Pharo.

Issue trackers have different kind of users. To make clear that different users have different needs, persona can be helpful. 

Isabelle is an information technology student looking for an interesting language and environment to learn. She wants to contribute to and learn from a smart community and needs interesting experiences on her cv. She has already learned the basics of a few mainstream languages and feels ready to try something more exotic. Smalltalk seems interesting as the origin of many inventions.

Yann is the major developer of a web-based platform based on Pharo and Seaside. He needs to ensure the platform keeps working smoothly and is updated regularly with the latest changes. In production he uses the released versions. He fears the major clean-ups Pharo is making make it difficult for him to keep up. He is dependent on a few old unmaintained squeaksource packages.

Janine just found an interesting old package on squeaksource. It was last changed in 2007. She has been using smalltalk for a few years, so knows what to expect when trying to load an unmaintained package. There are some missing classes that still exist in squeak.

Tony is the developer of a package that is used with nearly all smalltalks. He mainly works with a commercial smalltalk and keeps just enough contact with the Pharo community to keep his package working. He has complained about some changes that made it necessary for him to change his package structure. He mainly updates the Pharo version on his way to and from the office in the train. 

Eve maintains a few of the crucial Pharo kernel packages. They are under heavy development and once in a while everything breaks, leading to a flood of issues. They mostly come from outsiders, as she talks daily with the Pharo core team. She has to close a lot of them as duplicates. She also has to review code that gets attached in one form or another to the issue.

Daniel is a maintainer of the vm that forms the basis for the Pharo vm. The vm is used by many more projects.

Lara is a release manager for a well known linux distribution. Pharo is just one of 30 languages that are included in the distribution. Before doing a release she scans the issue tracker for any show stoppers. She had to stop including environments because of security issues.

Thabo has been using Excel to track bugs and issues internally in his company and would like to move to a new distributed tracking system built in Pharo. Apart from all the usual inputs and outputs, he needs to be able to import his massive excel spreedsheat, as perhaps csv, into the new tracking system.
';
	level: 'Advanced';
	yourself

.

PharoTopic new
	title: 'Desktop application for offline text search';
	contact: 'mbaehr+pharo@iaeste.at';
	supervisors: 'Martin Bähr';
	keywords: 'desktop gui spec';
	context: 'exploring spec and fulltext search capabilities. http://labs.fossasia.org/projects/smalltalk-search-app/';
	goal: 'a working application and documentation that allows others to learn how to build applications with spec';
	level: 'Beginner';
	yourself
.

PharoTopic new
	title: 'Server control panel';
	contact: 'mbaehr+pharo@iaeste.at';
	supervisors: 'Martin Bähr';
	keywords: 'gui server-management asset-management';
	context: 'file editor and asset and server manager solution, http://labs.fossasia.org/projects/smalltalk-file-editor/';
	goal: 'a tool to manage websites with eg. zinc, control running services, overview and edit assets such as static files in the image or on disk';
	level: 'Beginner';
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
	context: 'Apache Hadoop can scale from single server to thousands of servers. The explosion of sensors, drones and mobile devices and printed devices with sensors are going to generate incredible amounts of data to process and model. Hadoop is a good fit for that and Pharo can empower faster modelling and orchestration of what to do with all that information stored in this widely adopted Hadoop technology. http://wiki.apache.org/hadoop/PoweredBy';
	goal: 'Be able to use Hadoop from Pharo';
	level: 'Intermediate';
	yourself

.

PharoTopic new
	title: 'Deep learning';
	contact: 'jdelgado@cs.upc.edu';
	supervisors: 'Jordi Delgado';
	keywords: 'deep-learning';
	context: 'Robotics, drones and the internet of things will gather data from sensors that will need interpretation and modelling. All sorts of AI will use deep learning techniques and Pharo would be a great orchestrator of that modelling. http://www.quora.com/What-is-the-best-deep-learning-library-at-the-current-stage-for-working-on-large-data';
	goal: 'Be able to orchestrate deep learning operations from Pharo';
	level: 'Intermediate';
	yourself


.

PharoTopic new
	title: 'SQL Alchemy in Pharo';
	contact: '';
	supervisors: '';
	keywords: 'persistence database sql relational dsl';
	context: 'Big-data is a growing market that is easy to mine with a tool like Python''s SQL Alchemy. A Pharo version of such powerful tool would open this market opportunity for people wanting to offer Pharo-based solutions in this segment. Smalltalk''s syntax and tooling superiority could provide a significant push forward in this technology competitiveness because they might empower Pharo users to deliver solutions faster (ref: http://www.sqlalchemy.org/)';
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
	contact: 'jc@logicarts.com';
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
	title: 'Line level test coverage and which test to run';
	contact: 'Stephane.Ducasse@inria.fr';
	supervisors: 'Stephane.Ducasse@inria.fr';
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
	title: 'OpenDocument generator for Pillar';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: ' Stéphane Ducasse';
	keywords: 'Pillar OpenDocument LibreOffice OpenOffice document tree visitor';
	context: 'Pillar is a markup syntax that is easy to use and learn. This markup syntax generates a document tree. Pillar can export to HTML, LaTeX (to produce PDFs) and Markdown. Pillar has already been used in several projects (http://www.smalltalkhub.com/#!/~Pier/Pillar)' ;
	goal: 'The goal of this project is to add the standard OpenDocument export format (used by LibreOffice and OpenDocument).';
	level: 'Beginner';
	candidate: '';
	yourself
	
.

PharoTopic new
	title: 'Improving Launcher';
	contact: 'stephane.ducasse@inria.fr and guillermo.polito@inria.fr';
	supervisors: 'G. Polito and S. Ducasse';
	keywords: 'Launcher is a cool tool to launch and organize Pharo images';
	context: 'Launcher is important for both new and advanced Pharo users. Launcher needs to get improved in several areas: configuration management, image storage, friendliness. Damien has a long list of important features to implement. Demonstration: https://www.youtube.com/watch?v=fNim2Yxs320.
';
	goal: '';
	level: 'Intermediate';
	candidate: '';
	yourself
	
.

PharoTopic new
	title: 'Taking advantage of roel Typer in tools';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse, P, Tesone';
	keywords: 'type inferencer tool';
	context: 'Getting the type of variables and expression is a useful information.';
	goal: 'The goal of this project is to see tools can take benefit of type information provided by RoelTyper. For example we can have a pane with the instance variable type annotations, rules can check the use of a variable across multiple methods.';
	level: 'Intermediate';
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
	title: 'Tools for the new Module System';
	contact: 'Guillermo.Polito@inria.fr';
	supervisors: 'Guillermo Polito and S. Ducasse and Luc Fabresse';
	keywords: 'Module';
	context: 'G. Polito designed and implemented  a new module system for Pharo. In Conch class extensions are local to the classes defining them. ';
	goal: 'The goal of the project is to build tool support for Conch. In particular we want to have method extensions to be only visible from the importing packages. A module or class browser should reflect this behavior. We should take Pharo and turn the packages into their Conch counterpart to see how it feels.';
	level: 'intermediate';
	yourself

. 

PharoTopic new
	title: 'New generation finder';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse';
	keywords: 'Finder';
	context: 'The finder is a nice tool that let us find the messages based on the receiver and arguments. While really powerful its implementation should be revisited because ';
	goal: 'The actual implementation of the finder is based on static arrays to describe methods. This implementation is static. We should revisit this implementation. Methods may be tagged with Finder information.';
	level: 'intermediate';
	yourself
	
. 

PharoTopic new
	title: 'SUnit compiler';
	contact: 'tymchuk@inf.unibe.ch';
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
.	

PharoTopic new
	title: 'Do not hack, Refactor!';
	contact: 'thierry.goubier@cea.fr';
	supervisors: 'T. Goubier';
	keywords: 'refactoring, IDE, GUI';
	context: 'Pharo is a premier environment for refactoring, with the refactoring browser and associated tools all well implemented. However, traces of developers actions show little use of refactorings apart from renamings, and in general, the developper community makes little use of the power of refactorings. I suspect that support and awareness of refactorings in IDEs is lacking and does not bring a developper to refactor, or have trust in refactorings.';
	goal: 'The goal of this project is to extend the AltBrowser IDE and GUI with strong refactoring integration, ensuring that most developpers actions are refactorings, fully shown: effect on code, code affected, undo capability, refactorings history. Related projects that should be considered are: Epicea (Martin Dias), Rewrite Rule Browser (Mark Rizun)';
	level: 'intermediate';
	yourself	
.

PharoTopic new
	title: 'Weather/Meteo for OpenStreetMap in Roassal';
	contact: 'onil.goubier@gmail.com';
	supervisors: 'O. Goubier';
	keywords: 'Grib,  OpenStreetMaps, Roassal';
	context: '
With Roassal and OpenStreetMap, it is possible to explore geo-referenced data sets and easily script complex, interactive, geo-referenced
visualisations. Now, there is a lot of external data sources to use and integrate with Roassal!';
	goal: '
The goal of this project is to add a support for importing Grib data sets (https://en.wikipedia.org/wiki/GRIB) in Roassal. Those
datasets give access to weather information and predictions from many sources, and we need a support to import such files into
Pharo and Roassal';
	level: 'intermediate';
	yourself	
.

PharoTopic new
	title: 'GRASS integration with Pharoo/Roassal';
	contact: 'onil.goubier@gmail.com';
	supervisors: 'O. Goubier';
	keywords: 'GIS, GRASS, Roassal';
	context: '
With Roassal and OpenStreetMap, it is possible to explore geo-referenced data sets and easily script complex, interactive, geo-referenced
visualisations. Now, there is a lot of external data sources to use and integrate with Roassal!';
	goal: '
The goal of this project is to integrate GRASS (https://grass.osgeo.org/) with Pharo. GRASS provides an extensive set of
advanced GIS functions (modeling, simulations, data import, projections, etc...) and should be integrated inside Pharo,
first as a set of external commands (with a Pharo-based GUI front-end), and maybe as a FFI interface.';
	level: 'intermediate';
	yourself	
.

PharoTopic new
	title: 'GLL to the rescue';
	contact: 'thierry.goubier@cea.fr';
	supervisors: 'T. Goubier';
	keywords: 'parsing, SmaCC';
	context: 'SmaCC (the Smalltalk Compiler Compiler) is a lexer, parser generator and general code rewriting infrastructure developped by John Brant and Don Roberts, of refactoring browser fame. It handles LR(1), LALR(1) and GLR, but could be improved with alternatives parsing techniques.';
	goal: 'Add a GLL (Generalised Left-toRight Leftmost) parsing technique to SmaCC';
	level: 'advanced';
	yourself	
.

PharoTopic new
	title: 'Protobuf support';
	contact: '';
	supervisors: '';
	keywords: 'interactions,external,API,protobuf';
	context: 'There is no support for Protobuf in Pharo and it hinders integration.';
	goal: 'Protobuf compiler and client for Pharo';
	level: 'advanced';
	yourself
.


PharoTopic new
	title: 'RethinkDB support';
	contact: '';
	supervisors: '';
	keywords: 'persistence, nosql, protobuf';
	context: 'RethinkDB is great for notifications etc. But there is no Pharo client.';
	goal: 'Get a RethinkDB client for Pharo';
	level: 'Intermediate';
	yourself
.

PharoTopic new
	title: 'Roassal HTML5 export for OpenStreetMap';
	contact: 'thierry.goubier@cea.fr';
	supervisors: 'T. Goubier';
	keywords: 'GUI, Graphics, Roassal, OpenStreetMap, Javascript';
	context: 'Roassal can''t export to HTML visualisations using OpenStreetMap';
	goal: 'Implement a solution, probably with some javascript, to export interactive Roassal visualisations and animations with OpenStreetMap backgrounds.';
	level: 'Intermediate';
	yourself
.

PharoTopic new
	title: 'Process networks in Pharo';
	contact: 'thierry.goubier@cea.fr';
	supervisors: 'T. Goubier';
	keywords: 'Process Networks, Dataflow, Slots, FRP';
	context: 'Pharo 4.0 introduced Slots as a generalisation of instance variables, offering plenty of possibilities for active instance variables. And, for expressing parallel, complex interdependent code, we have a very powerfull concept in dataflows or process networks. Now, what about combining both?';
	goal: 'Reuse a pre-existing process network simulation framework and implement communications in that simulation with slots and active variables, creating a nice and fluid API.';
	level: 'Intermediate';
	yourself
.

PharoTopic new
	title: 'Visual Debugger';
	contact: 'alexandre.bergel@me.com';
	supervisors: 'Andrei Chis and Alexandre Bergel';
	keywords: 'Debugging Roassal';
	context: 'The visual interface of code debugger have always been designed as a set of textual widgets. Although Pharo debugger is famed for its flexibility and ease of use, it unfortunately stick to a poor and restricted support to convey information. Visual Debugger is a project to combine Roassal with GTDebugger to offer a whole range of new debuggers to expose object state history, and message recording.';
	goal: 'Bridge Roassal with GTDebugger and offer the infrastructure to define specific and visual debuggers';
	level: 'Intermediate';
	yourself
.

PharoTopic new
	title: 'Roassal 3D';
	contact: 'alexandre.bergel@me.com';
	supervisors: 'Alexandre Bergel';
	keywords: 'Roassal 3d';
	context: 'Roassal is a successful 2D visualization engine. A first implementation of Roassal 3D has been produced on top of Woden, a bridge between OpenGL and Pharo. However this initial implementation of Roassal 3D is far from being complete (e.g., text is not correctly supported) and examples are compelling missing.';
	goal: 'Improve Roassal 3D with text support and implement Matrix Cube in it (https://hal.inria.fr/hal-00931911v1/document).';
	level: 'Intermediate';
	yourself
.


PharoTopic new
       title: 'Arduino for phratch';
       contact: 'jannik.laval@univ-lyon2.fr';
       supervisors: 'Jannik Laval';
       keywords: 'robotics smalltalk visual programming';
       context: 'phratch is a visual programming language on top of Pharo (http://www.phratch.com/). We want an interface to control an arduino card.';
       goal: 'The goal is to provide an phratch API to control the whole Arduino features. From the direct control to the compilation of the source code.';
       level: 'Intermediate';
       yourself.
       
PharoTopic new
       title: 'Interactive Test Coverage Assistance';
       contact: 'tymchuk@inf.unibe.ch';
       supervisors: 'Yuriy Tymchuk, Claudio Corrodi';
       keywords: 'testing, tools, asistance, ia, heuristics';
       context: 'Tests help developers to ensure that the functionality is there. Let’s help developers to ensure that their functionality has tests.';
       goal: 'The vision of this project is to provide a testing assistant that will help you to test your code, and test your code with the available tests. Possible direction include: test linkage to tested entities, guiding assistance for test cteation, test inference fro runtime.';
       level: 'Advanced';
       yourself
       
.
	   
	   
PharoTopic new
       title: 'External-Properties-Aware Diff';
       contact: 'tymchuk@inf.unibe.ch';
       supervisors: 'Yuriy Tymchuk, Claudio Corrodi';
       keywords: 'tools, code quality, GUI';
       context: 'Developers use diff view to understand the changes between two versions of code. While diff focuses mainly on textual changes, software itself is not about text.';
       goal: 'The idea of this project is to integrate already available information about external properties of software (such as code quality critics) into a diff view.';
       level: 'Intermediate';
       yourself
.
	   
PharoTopic new
       title: 'ViDI v2 (Visual Design Inspector Reborn)';
       contact: 'tymchuk@inf.unibe.ch';
       supervisors: 'Yuriy Tymchuk, Claudio Corrodi';
       keywords: 'tools, code quality, 3D, inspector, visualization';
       context: 'ViDI is a visual design inspector. It visualized the software under analysis, enriches visualization with a result of quality rules, allows to edit software and fix it in place. However it has notisable shortcomings such as: visualization is hardcoded, quality rules are hardcoded, there is no navigation, there is no lightweight version.';
       goal: 'The goal of this project is to create a new major version of ViDI that will be as devastating on first mention as it’s predecessor, but will overcome all turnoffs of that appeared during prolongated use.';
       level: 'Intermediate';
       yourself.

PharoTopic new
       title: 'API Evolution Mining Service';
       contact: 'tymchuk@inf.unibe.ch';
       supervisors: 'Yuriy Tymchuk, Claudio Corrodi';
       keywords: 'continuous integration, code quality';
       context: 'API Evolution Miner si an existing tool that mines a project history to detect API changes. This tool is also capable of producing static analyzer rules that detect an old API usage in source code and provide a possibility to automatically change it to the new one. Although the tool was proven to work well it was never used for two reasons: 1) At the time when it was developed Pharo didn’t have a nice UI for reporting critics generated by the rules. 2) You had to setup API Evolution Miner by yourself and manually recover the rules. While the first issue is currently mitigated by QualityAssistant, the second one still persists.';
       goal: 'The goal of this project is to create a continuous integration service that will allow to easily register your projects and will provide rules to you in a semi-intrusive way when they are ready.';
       level: 'Entry-Intermediate';
       yourself.
       

PharoTopic new
       title: 'Poppy for phratch';
       contact: 'jannik.laval@univ-lyon2.fr';
       supervisors: 'Jannik Laval';
       keywords: 'robotics smalltalk visual programming';
       context: 'phratch is a visual programming language on top of Pharo (http://www.phratch.com/). We want an interface to control a Poppy robot (https://www.poppy-project.org/).';
       goal: 'The goal is to provide an phratch API to control the whole Poppy robot ecosystem. As Poppy can be modular, we have to consider the feature.';
       level: 'Intermediate';
       yourself.
       
PharoTopic new
title: 'In-image WYSIWYG documentation system in Bloc';
contact: 'stephan@stack.nl';
supervisors: 'Stephan Eggermont';
keywords: 'GUI TeX Framemaker';
context: 'The current documentation model for Pharo is Pillar.
Pillar is the document model from the Pier CMS and
provides exports to (a.o) html and LaTeX. It is a
simplified form of the LaTeX document model
without a WYSIWYG UI.

In the research world two documentation systems
dominate: LaTeX and Word. Word and its clones
dominate areas where ease of use for small papers
without maths are important, LaTeX the other fields.

From personal experience I know that the lack of
abstraction in Word and clones makes it very expensive
to create large, consistently formatted documents.
In addition, the typographical quality of the resulting
documents is much lower than that achievable with
LaTeX.

On the other hand, repurposing LaTeX to generate
anything other than PDF/paper documentation is
difficult because of the underlying language that
LaTeX is written in, and there is no easy to use
WYSIWYG UI for LaTeX.

It pains me to see the return of text based formatting
with primitive formats like markdown. At least in LaTeX
you can preserve semantics level content, in markdown
we are back at html 1.0.

The program I liked best for creating longer documents
was Framemaker. That provided the needed abstractions
in an efficient WYSIWYG UI. Framemaker was sold
from 1986, so the performance of current hardware
should be enough to run something similar in smalltalk.
I used versions 5.5 and 6, and had to abandon it when
Adobe stopped development and it was never migrated
from PowerPC.

Framemaker was fast enough to create books with
hundreds and even thousands of pages. It had working
versions of the long document features Word claimed to
have.

With Athens, Rubric and TxText we now have low level
abstractions for dealing with cursor and selection, fonts,
rendering glyphs and having both on-screen and 
PDF output. Bloc provvides the abstractions for an advanced GUI.

Consider the following model:

A book consists of a number of named documents.
This is essential for dealing with longer material, as
in a wysiwyg system we want to avoid having to re-layout
too much after a key is pressed. Across documents we only
need to remember the starting page/section numbers.

Each document consists of pages. On a page there can be fixed
content and content that is dependent on the text flow.
Most pages of a document have a similar layout, so each page
refers to a masterpage that defines the default content.
A document can have separate masterpages for
first, left and right pages, and rotated or extra large ones. 
A masterpage can define fixed items and calculated ones
(pagenumbers and current chapter). A textframedefinition
describes the textframes and the textflow for each textframe.

The text (and other in-line contents) of the document are stored
in paragraphs, which are stored in textflows.
The paragraphstyle of a paragraph knows how to layout it in
a textframe, and how to deal with the end of a textframe.
The paragraphstyle knows how to paginate, how to number
or provide other autotext at the beginning of a paragraph and
if the paragraph text should be part of a table of contents.
A textframe is  a (rectangular) area on a page.
The characterstyle of a paragraph is responsible for the font family,
size and style. The characterstyle can be overridden
by a specific paragraph or by a textrange.

With a model like this (and adding maths, tables, notes, figures
and references) we should be able to use Pharo to create both
high-quality documentation, and write research articles
(and books) in-image.

This model maps well to but is an extension of the cocoa and gnustep 
text model that use textstorage, textcontainer, typesetter, layoutmanager, 
glyphgenerator, textview and textinput. 
';

goal: 'Build a prototype WYSIWYG editor for documentation in Pharo. 
Create the basic datastructures to work as described in the context,
driven by tests. Use TeX-like linebreaking and hypenation.';
level: 'Advanced';
yourself


.

PharoTopic new
	title: 'DPI-awareness in Pharo';
	contact: 'corrodi@inf.unibe.ch';
	supervisors: 'Claudio Corrodi, Yuriy Tymchuk';
	keywords: 'GUI, usability, vm'; 
	context: 'Due to the rise of high-resolution displays in recent years, user interfaces that use fixed pixel-sizes for drawing certain elements tend to become too small to read. While operating systems can scale them up to some degree, the results are often blurry. Instead, programmers should write code that does not rely on fixed sizes, but instead draw elements depending on the DPI values of the current screen in order to ensure readable interfaces on every display.';
	goal: 'Pharo is currently not DPI aware. The goal of this project is to change this and add proper support for high-resolution displays to Pharo. This project may include both work on the Pharo virtual machine and within the image.';
	level: 'Advanced';
	yourself.


PharoTopic new
	title: 'Pharo WM';
	contact: 'corrodi@inf.unibe.ch';
	supervisors: 'Claudio Corrodi, Yuriy Tymchuk';
	keywords: 'tools, GUI, window managers, usability';
	context: 'Pharo comes with a window manager that is responsible for drawing and placing windows and their contents. Outside of Pharo, a large variety of window managers exist that implement different styles and methodologies.';
	goal: 'The goal of this project is to explore the possibility of alternate window mangers for Pharo by investigating existing implementations, exploring ideas for different ways of managing windows, and implementing such a window manager either from scratch or on top of existing work.';
	level: 'Intermediate';
	yourself.


PharoTopic new
	title: 'MongoTalk Replication';
	contact: 'phil@highoctane.be';
	supervisors: 'Philippe Back';
	keywords: 'nosql, availability, mongodb';
	context: 'MongoDB support is not fully supported in Pharo.';
	goal: 'MongoDB is supported in Pharo through MongoTalk but there is no support for replication. This makes it unsuited for highly available applications. This project is about making MongoTalk support replication.';
	level: 'Intermediate';
	yourself.

PharoTopic new
	title: 'MongoTalk GridFS';
	contact: 'phil@highoctane.be';
	supervisors: 'Philippe Back';
	keywords: 'nosql, gridfs, mongodb';
	context: 'MongoDB GridFS support is inexistent in Pharo. This limits the usage scenarios of MongoDB in the environment';
	goal: 'MongoDB is supported in Pharo through MongoTalk but there is no support for GridFS. This project is about making MongoTalk support GridFS.';
	level: 'Intermediate';
	yourself.


PharoTopic new
	title: 'DTrace support';
	contact: 'phil@highoctane.be';
	supervisors: 'Philippe Back';
	keywords: 'dtrace, system';
	context: 'DTrace support helps in seeing what happens at the system level.';
	goal: 'Add DTrace probes to PharoVM. See http://www.adrian-lienhard.ch/blog?dialog=smalltak-meets-dtrace for existing efforts in Squeak.';
	level: 'Intermediate';
	yourself.


