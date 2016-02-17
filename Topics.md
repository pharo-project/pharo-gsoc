#Title: IPFS for Pharo
###Contact: marcus.denker@inria.fr
###Supervisors: marcus.denker@inria.fr
###Keywords: 'peer to peer file systems'
###Context
IPFS is a peer-to-peer distributed file system that seeks to connect all computing devices with the same system of files. In some ways, IPFS is similar to the Web, but IPFS could be seen as a single BitTorrent swarm, exchanging objects within one Git repository. In other words, IPFS provides a high throughput content-addressed block storage model, with content-addressed hyperlinks. This forms a generalized Merkle DAG, a data structure upon which one can build versioned file systems, blockchains, and even a Permanent Web. IPFS combines a distributed hashtable, an incentivized block exchange, and a self-certifying namespace. IPFS has no single point of failure, and nodes do not need to trust each other.
IPFS right now is implemented as a server process in Go and allows the glosbal file system to be mounted as a user space filesystem. In addition, the server provides an API.
A real integration of IPFS with Pharo would require a complete implementation of IPFS in Pharo (projects are already in early stages to implement it in JavaScript and Python).
But the client API allows us already now to do experiments and assess the usefulness of IPFS in the context of Pharo. 
More information:

	https://ipfs.io

###Goal
The goal of this Project is to implement a IPFS client library using the API to communicate with the existing server and start to experiment how IPFS can be used with Pharo. For example, extend the launcher to load images via IPFS, distribute the files of smalltalkhub or provide access to resources via IPFS.
###Level: Normal

***

# Title: CDB for Pharo in Pharo
### Contact: stephane.ducasse@inria.fr
### Supervisors: stephane.ducasse@inria.fr
### Keywords: CDB database
### Context:
cdb is a fast, reliable, simple package for creating and reading constant databases. Its database structure provides several features:
Fast lookups: A successful lookup in a large database normally takes just two disk accesses. An unsuccessful lookup takes only one.
Low overhead: A database uses 2048 bytes, plus 24 bytes per record, plus the space for keys and data.
No random limits: cdb can handle any database up to 4 gigabytes. There are no other restrictions; records don''t even have to fit into memory. Databases are stored in a machine-independent format.
Fast atomic database replacement: cdbmake can rewrite an entire database two orders of magnitude faster than other hashing packages.
Fast database dumps: cdbdump prints the contents of a database in cdbmake-compatible format.
- http://cr.yp.to/cdb.html
- https://github.com/spotify/sparkey
- http://www.unixuser.org/~euske/doc/cdbinternals/

### Goal:
The goal of this project is to develop a Pharo implementation of CDB.
### Level: Normal

***

# Title: Scrapping Data: Enhancing User Experience
### Contact: stephane.ducasse@inria.fr
### Supervisors: stephane.ducasse@inria.fr
### Keywords: CVS
### Goal:
To analyze data, you need to get data in first. So, one may want to read - say -
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
###level: Normal

***

# Title: Loading V3 ImageSegments in Spur
### Contact: eliot.miranda@gmail.com
### Supervisors: Bert Freudenberg, Eliot Miranda
### Keywords: Pharo ImageSegments Spur
### Context: 
ImageSegments are a fast binary storage and loading facility for Pharo.  
They are supported directly by the virtual machine and use the garbage collector''s tracing machinery 
to construct the objects to be saved.  They also contain objects in the native heap format of the virtual machine.  
Amongst other things, ImageSegments have been used for eToys to store student projects.  
There are literally thousands of eToys projects stored in ImageSegments in the format of the current VM.  
Spur is a new object representation for the Squeak and Pharo V M that offers more functionality and approximately 
twice the performance than the existing VM.
### Goal:
The goal is to allow ImageSegments written by the current VM version, or older VM versions, 
to be loaded into a system running on the Spur VM.  
The project would be written entirely in Smalltalk, without VM support, 
and have the goal of being able to load old projects in this faster system.';
### Level: Advanced

***

# Title: Two-way synchronized code changes, better support for cross-platform co-development
### Contact: stephan@stack.nl
### Supervisors: Stephan Eggermont, Diego Lont
### Keywords: 
### Context:
GLORP is originally maintained in VisualWorks. We now have a version 
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
### Goal:
Two-way synchronized code changes, 1st target: GLORP
### Level: Advanced

***

# Title: Mailing List Application in Brick
### Contact: stephan@stack.nl
### Supervisors: Stephan Eggermont
### Keywords: Tools
### Context:
Making it possible to access and search the relevant mailing lists from inside any image 
provides a better feedback loop, especially for new smalltalkers';
### Goal:
Have a spotter-like search for the mailing list archives, 
make it easy to read and answer questions. Implement using Brick.
### Level: Intermediate

***

# Title: Torrent Library for Pharo
### Contact: stephan@stack.nl jdelgado@cs.upc.edu
### Supervisors:
### Keywords: P2P
### Context: 
It is time to stop depending on centralized infrastructure. We need to be able to use our DVCS the way it is meant to be used. On smalltalkhub BitDevTalk/BitTalk there is an implementation of the torrent protocol. Some parts (DHT) are not finished. On top of that, we want to be able to distribute our build artifacts and publish our public source.
### Goal:
Finish and extend the library. Add a monticello repository type.
### Level: Intermediate

***

# Title: 'Distributed Issue Tracker';
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

### Goal
A native smalltalk distributed issue tracker. It should have basic issue tracking functionality including attaching files/pictures/code. It should have a native interface, a web interface and a scripting API. Primary development is in Pharo.

Issue trackers have different kind of users. To make clear that different users have different needs, persona can be helpful. 

Isabelle is an information technology student looking for an interesting language and environment to learn. She wants to contribute to and learn from a smart community and needs interesting experiences on her cv. She has already learned the basics of a few mainstream languages and feels ready to try something more exotic. Smalltalk seems interesting as the origin of many inventions.

Yann is the major developer of a web-based platform based on Pharo and Seaside. He needs to ensure the platform keeps working smoothly and is updated regularly with the latest changes. In production he uses the released versions. He fears the major clean-ups Pharo is making make it difficult for him to keep up. He is dependent on a few old unmaintained squeaksource packages.

Janine just found an interesting old package on squeaksource. It was last changed in 2007. She has been using smalltalk for a few years, so knows what to expect when trying to load an unmaintained package. There are some missing classes that still exist in squeak.

Tony is the developer of a package that is used with nearly all smalltalks. He mainly works with a commercial smalltalk and keeps just enough contact with the Pharo community to keep his package working. He has complained about some changes that made it necessary for him to change his package structure. He mainly updates the Pharo version on his way to and from the office in the train. 

Eve maintains a few of the crucial Pharo kernel packages. They are under heavy development and once in a while everything breaks, leading to a flood of issues. They mostly come from outsiders, as she talks daily with the Pharo core team. She has to close a lot of them as duplicates. She also has to review code that gets attached in one form or another to the issue.

Daniel is a maintainer of the vm that forms the basis for the Pharo vm. The vm is used by many more projects.

Lara is a release manager for a well known linux distribution. Pharo is just one of 30 languages that are included in the distribution. Before doing a release she scans the issue tracker for any show stoppers. She had to stop including environments because of security issues.

Thabo has been using Excel to track bugs and issues internally in his company and would like to move to a new distributed tracking system built in Pharo. Apart from all the usual inputs and outputs, he needs to be able to import his massive excel spreedsheat, as perhaps csv, into the new tracking system.

###Level: 'Advanced'

***

# Title: '7GUIs implementation'
###Contact: 'Alain Plantec'
###Supervisors: ''
###Keywords: 'GUI learning-curve'
###Context
Benchmarking how hard easy is to implement GUIs in a given platform is probably a decisive factor on how good the opportunities this plattform has to offer. The 7GUIs benchmark is a nice research on GUI building usability and having a Pharo implementation will illlustrate the power of this platform. Ref: https://github.com/eugenkiss/7guis/wiki
###Goal
Be able to see a Pharo implementation for 7GUIs on top of Brick the new widgets layer of Pharo.
###Level: 'Intermediate'

***

# Title: Desktop application for offline text search
### Contact: 'mbaehr+pharo@iaeste.at
### Supervisors: Martin Bähr
### Keywords: desktop gui spec
### Context:
Exploring spec and fulltext search capabilities. http://labs.fossasia.org/projects/smalltalk-search-app/
### Goal: 
A working application and documentation that allows others to learn how to build applications with spec
### Level: Beginner

***

#TItle: 'Server control panel'
###Contact: 'mbaehr+pharo@iaeste.at'
###Supervisors: 'Martin Bähr'
###Keywords: 'gui server-management asset-management'
###Context: [file editor and asset and server manager solution](http://labs.fossasia.org/projects/smalltalk-file-editor/)
###Goal
A tool to manage websites with eg. zinc, control running services, overview and edit assets such as static files in the image or on disk
###Level: 'Beginner'

***

#Title: 'GUI builder'
###Contact: ''
###Supervisors: ''
###Keywords: 'GUI tooling'
###Context
If whatever you are doing you cannot make it visual easily, people cannot perceive it easily. Due to evolutionary reasons, our brain has unfair bias towards visual processing. Lets make something that allows Pharo to create visual things easier. Something like PARTS or Dolphin Smalltalk GUI builder would be huge.
###Goal
Be able to create composable widgets for Pharo programs
###Level: 'Intermediate'

***

#Title: 'REPL IDE'
###Contact: ''
###Supervisors: ''
###Keywords: 'REPL IDE tooling'
###Context
Smalltalkers are used to very powerful IDEs. What if we have to put Pharo in a really underpowered or monitorless device? Having a powerful REPL IDE that can evaluate expressions, inspect and debug, would empower users to still do things in mini-devices during the incoming tide wave of internet-of-things.
###Goal
Be able to evaluate expressions, inspect and debug Pharo programs using a REPL and a terminal
###Level: 'Intermediate'

***

#Title: 'Cross platform native GUI'
###Contact: ''
###Supervisors: ''
###Keywords: 'GUI'
###Context
The web is fantastic but at the same time there is a big pressure to create great native applications due to the improved User Experience that the native widgets can provide. Making Pharo to create them via things like [wxWidgets](https://www.wxwidgets.org/about/screenshots/) would instantly create opportunities to develop fast applications with a great UX.
###Goal
Be able to create and model native GUI from Pharo for OS X, Linux and Windows
###Level: 'Intermediate'

***

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

## Title: Statistics Library
### Contact: 'serge DOT stinckwich AT ird DOT fr
### Supervisors: 'Serge Stinckwich
### Keywords: 'statistic mathematics science';
### Context: 'Sci-Smalltalk is an existing Pharo library for doing scientific computing.';
### Goal: 'Add some statistics function to Sci-Smalltalk.';
### Level: 'Intermediate';

## Title: Better Palette Support
### Contact: damien.pollet@inria.fr
### Supervisors: Damien Pollet and Alexandre Bergel
### Keywords: Color palette visualization';
### Context:
CubeHelix is a way to compute intensity of color that is important for color blind people. It was introduced in Pharo recently. Now we should revisit the color palette to offer some predefined palette and better support for Colors.
### Goal:
The objectives is to revisit and build a new palette behavior
### Level: Beginner

	title: 'Enhancing file ownership';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'Damien Cassou and Mariano Martinez Peck';
	keywords: 'OS VM';
	context: 'We should enhance the support for file permissions: to answer, e.g., can the current VM read this file? The new mechanism must work on all currently supported platforms (Linux, OS X, Windows). Other platforms such as Java and Ruby might provide inspiration.  http://forum.world.st/Pharo-dev-FileSystem-Permissions-td4696735.html';
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


## Title: A Hot Recommander for Pharo
### Contact: yuriy.tymchuk@usi.ch
### Supervisors: Yuriy Tymchuk
### Keywords: recommander tools rules analyses
### Context:
Applying SmallLint rules is a task that often arrives late in the development process.
### Goal
The goal of this project is to build a recommander system that can execute after each compilation a set of rules on the edited code. The set of rules may adapt by taking into account the choices of the programmer. The tasks for this project could be: (1) add a menu (so that the system stay modular) to execute rules from the MonticelloBrowser, (2) build a recommander that executes a set of rules (3) taking into account the manifest of the package to filter out rules, (4) make sure that we can open the critics browser on the results. (5) Offer a way to select the rules that are executed on the fly.
	
## Title: An Expert System Framework'
### Contact: stephane.ducasse@inria.fr
### Supervisors: S. Ducasse
### Keywords: Expert systems
### Context:
There is a need for an expert system framework on top of Pharo. Several projects could benefit from it: recommander, moose, robotics, drgeo.
### Goal:
The goal of the project is to develop (with a strong test coverage) an expert system and some applications to evaluate the point of extension. Links: look at NeoPus (it proposes to use objects for facts).
### Level: Intermediate

		
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
	title: 'Epub generator for Pillar';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'Damien Cassou and Stéphane Ducasse';
	keywords: 'Pillar epub document tree visitor';
	context: 'Pillar is a markup syntax that is easy to use and learn. This markup syntax generates a document tree. Pillar can export to HTML, LaTeX (to produce PDFs) and Markdown. Pillar has already been used in several projects (http://www.smalltalkhub.com/#!/~Pier/Pillar)' ;
	goal: 'The goal of this project is to add the ePub export format (used by e-readers).';
	level: 'Beginner';
	candidate: '';
	yourself
	
.

PharoTopic new
	title: 'OpenDocument generator for Pillar';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'Damien Cassou and Stéphane Ducasse';
	keywords: 'Pillar OpenDocument LibreOffice OpenOffice document tree visitor';
	context: 'Pillar is a markup syntax that is easy to use and learn. This markup syntax generates a document tree. Pillar can export to HTML, LaTeX (to produce PDFs) and Markdown. Pillar has already been used in several projects (http://www.smalltalkhub.com/#!/~Pier/Pillar)' ;
	goal: 'The goal of this project is to add the standard OpenDocument export format (used by LibreOffice and OpenDocument).';
	level: 'Beginner';
	candidate: '';
	yourself
	
.

PharoTopic new
	title: 'Improving Launcher';
	contact: 'damien.cassou@inria.fr';
	supervisors: 'D. Cassou, B. Coman and S. Ducasse';
	keywords: 'Launcher is a cool tool to launch and organize Pharo images';
	context: 'Launcher is important for both new and advanced Pharo users. Launcher needs to get improved in several areas: configuration management, image storage, friendliness. Damien has a long list of important features to implement. Demonstration: https://www.youtube.com/watch?v=fNim2Yxs320.
';
	level: 'Intermediate';
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
	supervisors: 'S. Ducasse';
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
	title: 'Athens for the Pi';
	contact: 'thierry.goubier@cea.fr';
	supervisors: 'T. Goubier';
	keywords: 'GUI, Graphics, Roassal, Raspberry Pi';
	context: 'Roassal rely on Athens for its graphics, and Athens uses NativeBoost to talk to Cairo: this makes it x86 only, leaving Pi users wanting nice graphics in the cold.';
	goal: 'Implement a solution for the Pi: either Athens using bitblt, or a FFI link to Cairo on the Raspberry Pi. Bonus: see if the anti-aliasing bitblt of Cuis could be used.';
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
	
# Title: Visual Debugger
### Contact: alexandre.bergel@me.com
### Supervisors: 'Andrei Chis Alexandre Bergel
### Keywords: Debugging Roassal
### Context:
The visual interface of code debugger have always been designed as a set of textual widgets. Although Pharo debugger is famed for its flexibility and ease of use, it unfortunately stick to a poor and restricted support to convey information. Visual Debugger is a project to combine Roassal with GTDebugger to offer a whole range of new debuggers to expose object state history, and message recording.
### Goal:
Bridge Roassal with GTDebugger and offer the infrastructure to define specific and visual debuggers.
### Level: Intermediate

# Title: Roassal 3D
### Contact: alexandre.bergel@me.com
### Supervisors: Alexandre Bergel
### Keywords: Roassal 3d
### Context: Roassal is a successful 2D visualization engine. A first implementation of Roassal 3D has been produced on top of Woden, a bridge between OpenGL and Pharo. However this initial implementation of Roassal 3D is far from being complete (e.g., text is not correctly supported) and examples are compelling missing.
### Goal:
Improve Roassal 3D with text support and implement Matrix Cube in it (https://hal.inria.fr/hal-00931911v1/document).
### Level: Intermediate

# Title: GitPharo
### Contact: thierry.goubier@gmail.com
### Supervisors: Thierry Goubier
### Keywords: Pharo Git
### Context: 
Pharo is building some gui support, either via GitFileTree or libcgit integration, but GUI tools inside Pharo show little of the change.
### goal: 'Implement a GUI to manipulate and control a git repository from inside Pharo.
### Level: Intermediate
