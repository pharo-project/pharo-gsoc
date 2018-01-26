"add topics here as a plain Smalltalk code in the following format:

PharoTopic new
    title: 'The name of your project';
    contact: 'email address';
    supervisors: 'Supervisors names';
    keywords: 'keywords separated by spaces';
    context: 'a description of the context of the project';
    goal: 'description of the goal';
    level: 'Beginner or Intermediate or Advanced';
    yourself.

don't forget to separate topics as statements with periods

"

PharoTopic new
    title: 'freeCAD: 3D CAD with Motion Simulation';
    contact: 'askoh@askoh.com';
    supervisors: 'Aik-Siong Koh';
    keywords: 'Motion Simulation Multibody Dynamics';
    context: 'freeCAD is a basic 3D CAD with advanced Motion Simulation capabilities. 
    Originally written in VisualWorks Smalltalk, a port to Pharo will make it completely open source for a greater audience. 
    Its motion simulation capabilities are comparable to the best and can provide accurate answers to engineers and 
    scientists in diverse fields. Educators, students and new engineers will find it ideal for the teaching and 
    learning of geometry, kinematics, dynamics, vibrations, mechanisms, linkages, cams, machine design and physics. 
    http://www.ar-cad.com/freecad/index.html';
    goal: 'To use the power of Pharo to create a killer Computer Aided Design and Engineering tool for all';
    level: 'Intermediate';
    yourself.

PharoTopic new
	title: 'Taking Advantage of Immutable Objects';
	contact: 'clement.bera@inria.fr';
	supervisors: 'C. Bera';
	keywords: 'Write barrier';
	context: 'Pharo since its version 60 supports object immutability primitives at the Virtual Machine level
as explained here https://clementbera.wordpress.com/2016/01/24/introducing-immutability-in-the-cog-vm/.

It means that once marked as immutable objects cannot be modified and raise an error. 
For deep Virtual machine optimisations that fold stack elements, having strings as immutable objects is key. 
Now the core Pharo libraries may still use some mutable strings.
Therefore the core libraries of Pharo should be revisited to identify use of mutable structures.

Now we face several challenges:
	- Identification of part thats can be migrated to immutable objects.
	- Identification of patterns of potential problems.

In addition, there is a need to propose to the Pharo developers a way to take advantage of immutability. 
A typical example is the use of write barrier (to identify objects that changes and therefore should be 
committed to database). We need to explore the design of a frameworks to let the developer expresses what 
should be done when an immutable object detects an attempt to modify it.  
';
	goal:
'Tasks: Here is a possible outline of work:

The student will 
	- study current Pharo libraries for use of literal objects such as strings
	- define solution to avoid the use of mutable objects (in particular strings)
	- present the results to the core development team
	- iterate and help integrating the good results :)
	- start designing a first write barrier frameworks
Resources:
- https://clementbera.wordpress.com/2016/01/24/introducing-immutability-in-the-cog-vm/';
  	level: 'Intermediate';
  	yourself 
. 

PharoTopic new
	title: 'Finder 2.0: Reimplementing Example Based Query';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'stephane.ducasse@inria.fr';
	keywords: 'example finder';
	context: '
Pharo comes with a super nice tools: the finder. The finder les you gives objects i.e. 11 .2 .5, meaning 
what is the message that sent to 11 with 2 as argument will return 5. 
';
	goal: 'The goal of this project is to revisit completely the design of the tool. In particular
we should not use global tables but each class should be able to declare the methods that can be found or not this way. 
In addition adding tests and rethinking the core functionality is part of the project.
The project will have an impact on all the pharoers because this tool is super cool but needs some love.'; 
	level: 'Normal';
	yourself

.

PharoTopic new
	title: 'Scrapping Data: Enhancing User Experience';
	contact: 'alexandre.bergel@me.com ';
	supervisors: 'alexandre.bergel@me.com ';
	keywords: 'CVS DataFrame';
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
It may be worth to consider making this into a sequence that is read and processed lazily, 
to deal with CSV files bigger than memory.
When data is finally in, usually the first task is doing some processing, inspection or visualization. 
The Smalltalk collections are good for processing (although some lazy variants might help), 
and Roassal and the inspectors are perfect for visualization and browsing.
It could be extended as follows: The second part comes the time when one wants to run some algorithm. 
While there is no need to have the fanciest ones, there should be some
of the basics, such as:
- some form or regression (linear, logistic...)
- some form of clustering (kmeans, dbscan, canopy...)
Another thing which would be useful is support for linear algebra, leveraging native libraries such as BLAS or LAPACK.
Ideally, I would include also some tutorials, for instance for dealing with standard problems such as Kaggle competitions. 
Here I think Smalltalk would have an edge, since these tutorial could be in the form of Prof Stef. 
Still, it would be nice if some form of the tutorials was also on the web, which makes it discoverable.
';
	level: 'Normal';
	yourself

.

PharoTopic new
title: 'Jupyter Support for Pharo';
contact: 'serge.stinckwich@ird.fr , nikolaos.papoulias@ird.fr';
supervisors: 'Serge Stinckwich, Nick Papoulias';
keywords: 'Live coding, UI, Notebook, Interoperability, Literate Programming';
context: 'Jupyter is a web notebook that supports an interactive form of literate programming. 
It is written in python but other languages can be integrated to its workflow through custom "jupyter kernels". 
The goal of this project will be to integrate Pharo with Jupyter allowing easy experimentation, 
exploration and documentation of Pharo examples (for Roassal, Polymath etc) on the web.';
goal: 'Add Pharo support for Jupyter';
level: 'Intermediate';
candidate: 'Topic still free'
.

PharoTopic new
	title: 'Hacking Pharo in Your Web Browser';
	contact: 'luc.fabresse@imt-lille-douai.fr and Damien.pollet@inria.fr';
	supervisors: 'Luc Fabresse and Damien Pollet';
	keywords: 'Docker, Virtual machine';
	context: 'There is a need to be able to execute Pharo code through a web page. It implies sending code to the server-side for execution. However this execution should not expose the file system and machine resources. The idea of this problem is to run Pharo in a container and expose it in a web application. Such an isolated  infrastructure could be useful for experimenting with Pharo trhough a Web page.';
	goal:
'Possible tasks are:
- Have a look at http://www.tech.io / https://www.pythonanywhere.com / http://jupyter.org
- Learn Docker
- Make a first version
- Build a little webfront end.
';
  	level: 'Intermediate';
  	yourself 
. 

PharoTopic new
	title: 'Distributed Issue Tracker';
	contact: 'stephan@stack.nl';
	supervisors: 'Stephan Eggermont, Diego Lont';
	keywords: 'P2P Tools GUI';
  	context: '
Most development in Smalltalk uses distributed version control systems, either Monticello or Git.
But the current issue tracker is web-based and cannot work disconnected. 
Integrating the issue tracker in the CI workflow of the projects is crucial.
There is a small prototype available. 


**Benefits to the Student
getting to know the difficulties of issue tracking/the workflow of open source projects;
experience with distributed systems;
experience an agile open source environment;

**Benefits to the Community
bring new developers into the community
better integrated workflow;
native issue tracker, accessible both in-image, web and automated
';

	goal: 'A native smalltalk distributed issue tracker. 
It should have basic issue tracking functionality including attaching files/pictures/code. 
It should have a native interface, a web interface and a scripting API. 
Primary development is in Pharo.
';
	level: 'Advanced';
	yourself

.

PharoTopic new
	title: 'Weather/Meteo for OpenStreetMap in Roassal';
	contact: 'onil.goubier@gmail.com';
	supervisors: 'O. Goubier';
	keywords: 'Grib,  OpenStreetMaps, Roassal';
	context: '
With Roassal and OpenStreetMap, it is possible to explore geo-referenced data sets and easily script complex, 
interactive, geo-referenced visualisations. 
Now, there is a lot of external data sources to use and integrate with Roassal!';
	goal: '
The goal of this project is to add a support for importing Grib data sets (https://en.wikipedia.org/wiki/GRIB) in Roassal. 
Those datasets give access to weather information and predictions from many sources, and we need a support to import 
such files into Pharo and Roassal';
	level: 'intermediate';
	yourself	
.

PharoTopic new
	title: 'GRASS integration with Pharo/Roassal';
	contact: 'onil.goubier@gmail.com';
	supervisors: 'O. Goubier';
	keywords: 'GIS, GRASS, Roassal';
	context: '
With Roassal and OpenStreetMap, it is possible to explore geo-referenced data sets and easily script complex, 
interactive, geo-referenced visualisations. 
Now, there is a lot of external data sources to use and integrate with Roassal!';
	goal: '
The goal of this project is to integrate GRASS (https://grass.osgeo.org/) with Pharo. 
GRASS provides an extensive set of advanced GIS functions (modeling, simulations, data import, projections, etc...) 
and should be integrated inside Pharo,
first as a set of external commands (with a Pharo-based GUI front-end), and maybe as a FFI interface.';
	level: 'intermediate';
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
	title: 'IPFS for Pharo';
	contact: 'marcus.denker@inria.fr';
	supervisors: 'marcus.denker@inria.fr';
	keywords: 'peer to peer file systems';
	context: ' IPFS is a peer-to-peer distributed file system that seeks to connect all computing devices 
with the same system of files. 
In some ways, IPFS is similar to the Web, but IPFS could be seen as a single BitTorrent swarm, 
exchanging objects within one Git repository. 
In other words, IPFS provides a high throughput content-addressed block storage model, with content-addressed hyperlinks. 
This forms a generalized Merkle DAG, a data structure upon which one can build versioned file systems, blockchains, 
and even a Permanent Web. 
IPFS combines a distributed hashtable, an incentivized block exchange, and a self-certifying namespace. 
IPFS has no single point of failure, and nodes do not need to trust each other.
IPFS right now is implemented as a server process in Go and allows the global file system to be mounted as a user 
space filesystem. In addition, the server provides an API.
A real integration of IPFS with Pharo would require a complete implementation of IPFS in Pharo 
(projects are already in early stages to implement it in JavaScript and Python).
But the client API allows us already now to do experiments and assess the usefulness of IPFS in the context of Pharo. 
More information:
	https://ipfs.io
';
	goal: 'The goal of this Project is to implement a IPFS client library using the API to communicate with 
the existing server and start to experiment how IPFS can be used with Pharo. 
For example, extend the launcher to load images via IPFS, distribute the files of smalltalkhub or provide
access to resources via IPFS.'; 
	level: 'Normal';
	yourself


.



PharoTopic new
	title: 'Improving code completion';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'S. Ducasse and E. Lorenzano';
	keywords: 'completion';
	context: 'Automatic completion is really important. The current code completion already defines some good 
behavior but it can do better.';
	goal: 'The goal of the project is to improve the ecompletion infrastructure: 
The tasks are: 
(1) study the existing approaches (NOC and NEC), 
(2) Write some tests to characterize specific behavior, 
(3) Improve the noise introduced by the Symbol table usage, 
(4) build more heuristics.';
	level: 'Intermediate';
	yourself
    
. 

PharoTopic new
	title: 'New Collections for Pharo';
	contact: 'Juan Pablo Sandoval Alcocer <juampiboy@gmail.com>';
	supervisors: 'Juan Pablo Sandoval Alcocer';
	keywords: 'Collection DataStructure Benchmarks';
	context: 'Pharo contains a large set of collections (See http://books.pharo.org/ PharoByExample Collections chapter)
with around 100 classes. But new collections exist such as BTree, QuadTree, SkipList, Trie, …

Containers is an existing effort to gather many of the existing collection developed individually and externally to Pharo into a single umbrella. The idea is to create a modular collection library for Pharo users. Containers’s goals is to develop new efficient, well-tested, well documented collections. 
Containers contains already Tree, Grid, SkipList, LinkedList, OrderedDictionary but there is a need to revisit them. 

Finally Pharo 6.0 comes with two powerful primitives: new object immutability primitives as well as ephemerons [Hayes97].

With such important primitives two tasks can be performed: 
	- design new weak collections taking advantage of ephemerons.
	- revisit and design new concurrent collections taking advantage of immutability.
	Links:
- Camillo Bruni master contains a chapter on how to benchmark for collections http://scg.unibe.ch/archive/masters/Brun11a.pdf
- http://source.lukas-renggli.ch/container started to implement some new collections for Pharo.
- http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-851-advanced-data-structures-spring-2010/lecture-notes/';
	level: 'Advanced';
    goal: 'Tasks:
- The student will study current Collections of Pharo (See http://books.pharo.org/ PharoByExample Collections chapter) for an overview.
- He will study the new collections in the project named Containers on Smalltalkhub.
	http://smalltalkhub.com/#!/~StephaneDucasse/Containers
- Migrate some existing projects to Containers (adding tests, comments).
- Design and implement new collections such as 
	-- BTree, QuadTrees, 
	-- Immutable list, set, array
Resources:
- Camillo Bruni master contains a chapter on how to benchmark for collections http://scg.unibe.ch/archive/masters/Brun11a.pdf 
- http://source.lukas-renggli.ch/container started to implement some new collections for Pharo. 
- http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-851-advanced-data-structures-spring-2010/lecture-notes/
- Barry Hayes, Proceedings OOPSLA ''97, ACM SIGPLAN Notices, Ephemerons: A new finalization mechanism, 1997';
	
yourself


.

PharoTopic new
	title: 'Enhancing Pillar';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'Stéphane Ducasse';
	keywords: 'Pillar OpenDocument LibreOffice OpenOffice document tree visitor';
	context: 'Pillar is a markup syntax that is easy to use and learn. This markup syntax generates a document tree. P
    illar can export to HTML, LaTeX (to produce PDFs) and Markdown. Pillar has already been used in several projects 
    (http://www.smalltalkhub.com/#!/~Pier/Pillar) and most of the pharo books and mooc' ;
	goal: 'The goal of the project is to do help in the development of the new iteration of Pillar. Previous development effort introduced a better 
    architecture but there are still some points to improve. 
    - Documenting certain classes
    - Improving the archetype design
    - Separating command-line into object configurators and command-line
    - Producing a new version of ectastic http://guillep.github.io/ecstatic/ that uses the lastest version of pillar. 
    - One subgoal of this project is to add the standard OpenDocument export format (used by LibreOffice and OpenDocument).';
	level: 'Beginner';
	candidate: '';
	yourself.

 PharoTopic new
       title: 'Pharoya';
       contact: 'phil@highoctane.be';
       supervisors: 'Philippe Back';
       keywords: 'Hadoop Cluster Distributed computing Big data REST Kerberos GSSAPI Polymath Zookeeper';
       context: 'Pharoya stands for Pharo on YARN. YARN, the underlying system under Hadoop, allows one to write distributed
       applications running in YARN containers on (lots of) compute nodes.
       This project is meant to run Pharo instances on such containers and report back to the Pharo Application Manager.
       Integration with Polymath is desirable. This project will be able to run run on a 1200+ core/4TB RAM/50TB Storage system.
       Pharo images are smaller than Java UberJars and will use less cluster resources for more results.';
       goal: 'Make Pharo a first class citizen on Hadoop clusters as a YARN application';
       level: 'Intermediate to Advanced';
       yourself.


 PharoTopic new
	title: 'Zeppelin Support for Pharo';
	contact: 'phil@highoctane.be';
	supervisors: 'Philippe Back';
	keywords: 'Live coding, UI, Notebook, Interoperability, Literate Programming, Integration, Polyglot programming';
	context: 'Zeppelin is a Web-based notebook that enables data-driven, interactive data analytics and collaborative documents. https://github.com/apache/zeppelin. Zeppelin Server is in Java and Interpreters are using some way to connect to other languages for notebook paragraphs (network socket, library, ...).
The goal of this project is to integrate Pharo with Zeppelin and delivering initial examples in Pharo.';
	goal: 'Add a Pharo Zeppelin Interpreter to Zeppelin';
	level: 'Intermediate';
	candidate: 'Topic still free';
	yourself.

PharoTopic new
       title: 'MQTT support for Pharo';
       contact: 'sven@stfx.eu, juraj.kubelka@icloud.com';
       supervisors: 'Sven Van Caekenberghe, Juraj Kubelka';
       keywords: 'mqtt, internet, protocol, client';
       context: 'MQTT is a proven ISO standard machine-to-machine (M2M)/"Internet of Things" connectivity protocol. It was designed as an extremely lightweight publish/subscribe messaging transport. It is useful for connections with remote locations where a small code footprint is required and/or network bandwidth is at a premium. See http://mqtt.org for more details or "Using MQTT in Real-World M2M Communication” talk that explains MQTT protocol and covers common scenarios: https://www.youtube.com/watch?v=r6HEQVhgnP8.

Pharo project already supports MQTT protocol (https://github.com/svenvc/mqtt/) including clients and use cases (https://github.com/JurajKubelka/MQTTCallbackClient or https://github.com/JurajKubelka/MQTTChat).';
       goal: 'The goal of this project is to improve existing code (MQTT, callback client, chat). Namely add more test cases in order to cover common scenarios, improve documentation, and add support for large files inspired by the talk mentioned above.';
       level: 'Intermediate';
       yourself.
       
PharoTopic new
       title: 'Pharo Launcher command line interface';
       contact: 'guillermopolito@gmail.com';
       supervisors: 'Guillermo Polito, Christophe Demarey';
       keywords: 'image management, command line interface, virtualization';
       context: 'The pharo launcher is an application that allows the management of pharo images. In a "docker style", you can download images from templates, install them, list your installed images, and launch them. All this is done through a visual user interface in a desktop application.';
       goal: 'The goal of this project is to implement a command line interface for the Pharo launcher, to be able to manipulate it on servers as we do with docker. For example:
       
       $ phlauncher list
       $ phlauncher templates
       $ phlauncher install X
       $ phlauncher run X';
       level: 'Intermediate';
       yourself.

PharoTopic new
       title: 'Next Generation Unit Testing';
       contact: 'guillermopolito@gmail.com';
       supervisors: 'Guillermo Polito';
       keywords: 'unit testing, parallelization, configuration';
       context: 'SUnit is the current unit testing framework in Pharo. Building complex applications require new testing capabilities, with an enhanced UI and a clear API that allows new extensions.';
       goal: 'The goal of this project is to redesign the SUnit framework to be extensible. The extension points and hooks in the framework should allow users to create their own extensions. Moreover, the student will implement extensions for common testing scenarios such as concurrency and parameterized tests.';
       level: 'Intermediate';
       yourself.

PharoTopic new
	title: 'DataFrame';
	contact: 'oleks@ucu.edu.ua';
	supervisors: 'Oleksandr Zaytsev, Serge Stinckwich';
	keywords: 'data science, data analysis, dataframe, tabular data, statistics';
	context: 'DataFrame was introduced to Pharo during the previous GSoC (https://github.com/PolyMathOrg/DataFrame). The work on DataFrame continued and many new features were introduced by different contributors. However, it is still a work in progress and a huge portion of functionality that can be found in other data frame packages (e.g. R, pandas) is missing.';
	goal: 'The goal of this project is to introduce new functionality to DataFrame (for example, handling missing values) and write examples of applying DataFrame to real problems of Data Science (one can reproduce examples from pandas and scikit-learn documentation, as well as some examples from R-bloggers)';
	level: 'Intermediate';
	yourself.
