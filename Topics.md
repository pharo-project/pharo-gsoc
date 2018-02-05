#Pharo GSOC Topics

* [Keras for Pharo](#title-keras-for-pharo)
* [freeCAD: 3D CAD with Motion Simulation](#title-freecad-3d-cad-with-motion-simulation)
* [Taking Advantage of Immutable Objects](#title-taking-advantage-of-immutable-objects)
* [Finder 2.0: Reimplementing Example Based Query](#title-finder-20-reimplementing-example-based-query)
* [Jupyter Support for Pharo](#title-jupyter-support-for-pharo)
* [Hacking Pharo in Your Web Browser](#title-hacking-pharo-in-your-web-browser)
* [Distributed Issue Tracker](#title-distributed-issue-tracker)
* [Weather/Meteo for OpenStreetMap in Roassal](#title-weathermeteo-for-openstreetmap-in-roassal)
* [GRASS integration with Pharo/Roassal](#title-grass-integration-with-pharoroassal)
* [Two-way synchronized code changes, better support for cross-platform co-development ](#title-two-way-synchronized-code-changes-better-support-for-cross-platform-co-development-)
* [IPFS for Pharo](#title-ipfs-for-pharo)
* [Improving code completion](#title-improving-code-completion)
* [New Collections for Pharo](#title-new-collections-for-pharo)
* [Enhancing Pillar](#title-enhancing-pillar)
* [Pharoya](#title-pharoya)
* [Zeppelin Support for Pharo](#title-zeppelin-support-for-pharo)
* [MQTT support for Pharo](#title-mqtt-support-for-pharo)
* [Pharo Launcher command line interface](#title-pharo-launcher-command-line-interface)
* [Next Generation Unit Testing](#title-next-generation-unit-testing)
* [DataFrame](#title-dataframe)
* [Liberated Pixel Cup native support in Pharo](#title-liberated-pixel-cup-native-support-in-pharo)
* [Vector instructions in Pharo](#title-vector-instructions-in-pharo)
* [Material Design Lite](#title-material-design-lite)

##Title: Keras for Pharo
###Contact: alexandre.bergel@m.com
###Supervisors: Alexandre Bergel
###Keywords: Artificial Intelligence
###Context
a description of the context of the project
###Goal
The goal of this project is implement the necessary in Pharo to be able to access the main functionalities of Keras. The first phase of the effort is to use Python3Generator to interact with Python. The second phase is to wrap a representative set of Keras functionalities. As a third phase, is to design a set of compeling examples.
###Level: Beginner

***

##Title: freeCAD: 3D CAD with Motion Simulation
###Contact: askoh@askoh.com
###Supervisors: Aik-Siong Koh
###Keywords: Motion Simulation Multibody Dynamics
###Context
freeCAD is a basic 3D CAD with advanced Motion Simulation capabilities. 
    Originally written in VisualWorks Smalltalk, a port to Pharo will make it completely open source for a greater audience. 
    Its motion simulation capabilities are comparable to the best and can provide accurate answers to engineers and 
    scientists in diverse fields. Educators, students and new engineers will find it ideal for the teaching and 
    learning of geometry, kinematics, dynamics, vibrations, mechanisms, linkages, cams, machine design and physics. 
    http://www.ar-cad.com/freecad/index.html
###Goal
To use the power of Pharo to create a killer Computer Aided Design and Engineering tool for all
###Level: Intermediate

***

##Title: Taking Advantage of Immutable Objects
###Contact: clement.bera@inria.fr
###Supervisors: C. Bera
###Keywords: Write barrier
###Context
Pharo since its version 60 supports object immutability primitives at the Virtual Machine level
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

###Goal
Tasks: Here is a possible outline of work:

The student will 
	- study current Pharo libraries for use of literal objects such as strings
	- define solution to avoid the use of mutable objects (in particular strings)
	- present the results to the core development team
	- iterate and help integrating the good results :)
	- start designing a first write barrier frameworks
Resources:
- https://clementbera.wordpress.com/2016/01/24/introducing-immutability-in-the-cog-vm/
###Level: Intermediate

***

##Title: Finder 2.0: Reimplementing Example Based Query
###Contact: stephane.ducasse@inria.fr
###Supervisors: stephane.ducasse@inria.fr
###Keywords: example finder
###Context

Pharo comes with a super nice tools: the finder. The finder les you gives objects i.e. 11 .2 .5, meaning 
what is the message that sent to 11 with 2 as argument will return 5. 

###Goal
The goal of this project is to revisit completely the design of the tool. In particular
we should not use global tables but each class should be able to declare the methods that can be found or not this way. 
In addition adding tests and rethinking the core functionality is part of the project.
The project will have an impact on all the pharoers because this tool is super cool but needs some love.
###Level: Normal

***

##Title: Jupyter Support for Pharo
###Contact: serge.stinckwich@ird.fr , nikolaos.papoulias@ird.fr
###Supervisors: Serge Stinckwich, Nick Papoulias
###Keywords: Live coding, UI, Notebook, Interoperability, Literate Programming
###Context
Jupyter is a web notebook that supports an interactive form of literate programming. 
It is written in python but other languages can be integrated to its workflow through custom "jupyter kernels". 
The goal of this project will be to integrate Pharo with Jupyter allowing easy experimentation, 
exploration and documentation of Pharo examples (for Roassal, Polymath etc) on the web.
###Goal
Add Pharo support for Jupyter
###Level: Intermediate

***

##Title: Hacking Pharo in Your Web Browser
###Contact: luc.fabresse@imt-lille-douai.fr and Damien.pollet@inria.fr
###Supervisors: Luc Fabresse and Damien Pollet
###Keywords: Docker, Virtual machine
###Context
There is a need to be able to execute Pharo code through a web page. It implies sending code to the server-side for execution. However this execution should not expose the file system and machine resources. The idea of this problem is to run Pharo in a container and expose it in a web application. Such an isolated  infrastructure could be useful for experimenting with Pharo trhough a Web page.
###Goal
Possible tasks are:
- Have a look at http://www.tech.io / https://www.pythonanywhere.com / http://jupyter.org
- Learn Docker
- Make a first version
- Build a little webfront end.

###Level: Intermediate

***

##Title: Distributed Issue Tracker
###Contact: stephan@stack.nl
###Supervisors: Stephan Eggermont, Diego Lont
###Keywords: P2P Tools GUI
###Context

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

###Goal
A native smalltalk distributed issue tracker. 
It should have basic issue tracking functionality including attaching files/pictures/code. 
It should have a native interface, a web interface and a scripting API. 
Primary development is in Pharo.

###Level: Advanced

***

##Title: Weather/Meteo for OpenStreetMap in Roassal
###Contact: onil.goubier@gmail.com
###Supervisors: O. Goubier
###Keywords: Grib,  OpenStreetMaps, Roassal
###Context

With Roassal and OpenStreetMap, it is possible to explore geo-referenced data sets and easily script complex, 
interactive, geo-referenced visualisations. 
Now, there is a lot of external data sources to use and integrate with Roassal!
###Goal

The goal of this project is to add a support for importing Grib data sets (https://en.wikipedia.org/wiki/GRIB) in Roassal. 
Those datasets give access to weather information and predictions from many sources, and we need a support to import 
such files into Pharo and Roassal
###Level: intermediate

***

##Title: GRASS integration with Pharo/Roassal
###Contact: onil.goubier@gmail.com
###Supervisors: O. Goubier
###Keywords: GIS, GRASS, Roassal
###Context

With Roassal and OpenStreetMap, it is possible to explore geo-referenced data sets and easily script complex, 
interactive, geo-referenced visualisations. 
Now, there is a lot of external data sources to use and integrate with Roassal!
###Goal

The goal of this project is to integrate GRASS (https://grass.osgeo.org/) with Pharo. 
GRASS provides an extensive set of advanced GIS functions (modeling, simulations, data import, projections, etc...) 
and should be integrated inside Pharo,
first as a set of external commands (with a Pharo-based GUI front-end), and maybe as a FFI interface.
###Level: intermediate

***

##Title: Two-way synchronized code changes, better support for cross-platform co-development 
###Contact: stephan@stack.nl
###Supervisors: Stephan Eggermont, Diego Lont
###Keywords: 
###Context
Glorp is originally maintained in VisualWorks. We now have a version 
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
(UIBuilder, Widgets, XPForums) using a 'signals' style 
communication. In Pharo it would make sense to have them 
use Announcements. 

###Goal
Two-way synchronized code changes, 1st target: GLORP
###Level: Advanced

***

##Title: IPFS for Pharo
###Contact: marcus.denker@inria.fr
###Supervisors: marcus.denker@inria.fr
###Keywords: peer to peer file systems
###Context
 IPFS is a peer-to-peer distributed file system that seeks to connect all computing devices 
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

###Goal
The goal of this Project is to implement a IPFS client library using the API to communicate with 
the existing server and start to experiment how IPFS can be used with Pharo. 
For example, extend the launcher to load images via IPFS, distribute the files of smalltalkhub or provide
access to resources via IPFS.
###Level: Normal

***

##Title: Improving code completion
###Contact: stephane.ducasse@inria.fr
###Supervisors: S. Ducasse, E. Lorenzano and Juan Pablo Sandoval A.
###Keywords: completion
###Context
Automatic completion is really important. The current code completion already defines some good 
behavior but it can do better.
###Goal
The goal of the project is to improve the ecompletion infrastructure: 
The tasks are: 
(1) study the existing approaches (NOC and NEC), 
(2) Write some tests to characterize specific behavior, 
(3) Improve the noise introduced by the Symbol table usage, 
(4) build more heuristics.
###Level: Intermediate

***

##Title: New Collections for Pharo
###Contact: Juan Pablo Sandoval Alcocer <juampiboy@gmail.com>
###Supervisors: Juan Pablo Sandoval Alcocer
###Keywords: Collection DataStructure Benchmarks
###Context
Pharo contains a large set of collections (See http://books.pharo.org/ PharoByExample Collections chapter)
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
- http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-851-advanced-data-structures-spring-2010/lecture-notes/
###Goal
Tasks:
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
- Barry Hayes, Proceedings OOPSLA '97, ACM SIGPLAN Notices, Ephemerons: A new finalization mechanism, 1997
###Level: Advanced

***

##Title: Enhancing Pillar
###Contact: stephane.ducasse@inria.fr
###Supervisors: Stéphane Ducasse
###Keywords: Pillar OpenDocument LibreOffice OpenOffice document tree visitor
###Context
Pillar is a markup syntax that is easy to use and learn. This markup syntax generates a document tree. P
    illar can export to HTML, LaTeX (to produce PDFs) and Markdown. Pillar has already been used in several projects 
    (http://www.smalltalkhub.com/#!/~Pier/Pillar) and most of the pharo books and mooc
###Goal
The goal of the project is to do help in the development of the new iteration of Pillar. Previous development effort introduced a better 
    architecture but there are still some points to improve. 
    - Documenting certain classes
    - Improving the archetype design
    - Separating command-line into object configurators and command-line
    - Producing a new version of ectastic http://guillep.github.io/ecstatic/ that uses the lastest version of pillar. 
    - One subgoal of this project is to add the standard OpenDocument export format (used by LibreOffice and OpenDocument).
###Level: Beginner

***

##Title: Pharoya
###Contact: phil@highoctane.be
###Supervisors: Philippe Back
###Keywords: Hadoop Cluster Distributed computing Big data REST Kerberos GSSAPI Polymath Zookeeper
###Context
Pharoya stands for Pharo on YARN. YARN, the underlying system under Hadoop, allows one to write distributed
       applications running in YARN containers on (lots of) compute nodes.
       This project is meant to run Pharo instances on such containers and report back to the Pharo Application Manager.
       Integration with Polymath is desirable. This project will be able to run run on a 1200+ core/4TB RAM/50TB Storage system.
       Pharo images are smaller than Java UberJars and will use less cluster resources for more results.
###Goal
Make Pharo a first class citizen on Hadoop clusters as a YARN application
###Level: Intermediate to Advanced

***

##Title: Zeppelin Support for Pharo
###Contact: phil@highoctane.be
###Supervisors: Philippe Back
###Keywords: Live coding, UI, Notebook, Interoperability, Literate Programming, Integration, Polyglot programming
###Context
Zeppelin is a Web-based notebook that enables data-driven, interactive data analytics and collaborative documents. https://github.com/apache/zeppelin. Zeppelin Server is in Java and Interpreters are using some way to connect to other languages for notebook paragraphs (network socket, library, ...).
The goal of this project is to integrate Pharo with Zeppelin and delivering initial examples in Pharo.
###Goal
Add a Pharo Zeppelin Interpreter to Zeppelin
###Level: Intermediate

***

##Title: MQTT support for Pharo
###Contact: sven@stfx.eu, juraj.kubelka@icloud.com
###Supervisors: Sven Van Caekenberghe, Juraj Kubelka
###Keywords: mqtt, internet, protocol, client
###Context
MQTT is a proven ISO standard machine-to-machine (M2M)/"Internet of Things" connectivity protocol. It was designed as an extremely lightweight publish/subscribe messaging transport. It is useful for connections with remote locations where a small code footprint is required and/or network bandwidth is at a premium. See http://mqtt.org for more details or "Using MQTT in Real-World M2M Communication” talk that explains MQTT protocol and covers common scenarios: https://www.youtube.com/watch?v=r6HEQVhgnP8.

Pharo project already supports MQTT protocol (https://github.com/svenvc/mqtt/) including clients and use cases (https://github.com/JurajKubelka/MQTTCallbackClient or https://github.com/JurajKubelka/MQTTChat).
###Goal
The goal of this project is to improve existing code (MQTT, callback client, chat). Namely add more test cases in order to cover common scenarios, improve documentation, and add support for large files inspired by the talk mentioned above.
###Level: Intermediate

***

##Title: Pharo Launcher command line interface
###Contact: guillermopolito@gmail.com
###Supervisors: Guillermo Polito, Christophe Demarey
###Keywords: image management, command line interface, virtualization
###Context
The pharo launcher is an application that allows the management of pharo images. In a "docker style", you can download images from templates, install them, list your installed images, and launch them. All this is done through a visual user interface in a desktop application.
###Goal
The goal of this project is to implement a command line interface for the Pharo launcher, to be able to manipulate it on servers as we do with docker. For example:
       
       $ phlauncher list
       $ phlauncher templates
       $ phlauncher install X
       $ phlauncher run X
###Level: Intermediate

***

##Title: Next Generation Unit Testing
###Contact: guillermopolito@gmail.com
###Supervisors: Guillermo Polito
###Keywords: unit testing, parallelization, configuration
###Context
SUnit is the current unit testing framework in Pharo. Building complex applications require new testing capabilities, with an enhanced UI and a clear API that allows new extensions.
###Goal
The goal of this project is to redesign the SUnit framework to be extensible. The extension points and hooks in the framework should allow users to create their own extensions. Moreover, the student will implement extensions for common testing scenarios such as concurrency and parameterized tests.
###Level: Intermediate

***

##Title: DataFrame
###Contact: oleks@ucu.edu.ua
###Supervisors: Oleksandr Zaytsev, Serge Stinckwich
###Keywords: data science, data analysis, dataframe, tabular data, statistics
###Context
DataFrame was introduced to Pharo during the previous GSoC (https://github.com/PolyMathOrg/DataFrame). The work on DataFrame continued and many new features were introduced by different contributors. However, it is still a work in progress and a huge portion of functionality that can be found in other data frame packages (e.g. R, pandas) is missing.
###Goal
The goal of this project is to introduce new functionality to DataFrame (for example, handling missing values) and write examples of applying DataFrame to real problems of Data Science (one can reproduce examples from pandas and scikit-learn documentation, as well as some examples from R-bloggers)
###Level: Intermediate

***

##Title: Liberated Pixel Cup native support in Pharo
###Contact: bera.clement@gmail.com
###Supervisors: Clement Bera, Stephane Ducasse ?
###Keywords: Cairo SDL 2D
###Context
It is now possible to build quite good 2D native applications in Pharo using Cairo and SDL, which led to experimental video games (article in Linux Mag of April 2018, https://github.com/clementbera/wizard-battle-arena). On the other hand, projects such as The Liberated Pixel Cup supported by the Mozzila Foundation and other large groups develop huge graphic ressources available under open source licenses (http://lpc.opengameart.org/). Note the student is strongly advised to use a Linux machine for this work.
###Goal
The first goal is to create a library to easily import and display LPC characters generated from website like this one (http://gaurav.munjal.us/Universal-LPC-Spritesheet-Character-Generator/) into the Pharo stack (SDL, Cairo & Pharo). Second goal is to build a minimal video game framework on top of it with a game. Lastly, the third goal is to improve packaging & deployment of such native applications in Pharo, as well as evaluating the integration with other frameworks (Bloc to display GUI for example). The third goal has to be clearly detailled in the student proposal - we will not accept topics not improving the Core Pharo system. In addition, the demo game created should be submitted to this year LPC event (competition from June 1st to July 31st) to show Pharo to other communities.
###Level: Beginner to Intermediate

***

##Title: Vector instructions in Pharo
###Contact: bera.clement@gmail.com
###Supervisors: Clement Bera
###Keywords: AVX MMX vector
###Context
On the one hand, recent work has allowed the Pharo bytecode set to be extended relatively easily to use more low-level operations. On the other hand, the Sci Smalltalk community is developping on top of Pharo and the Maths/Matrix librares would greatly benefit from native vector instruction usage.
###Goal
Going bottoms up, the student would need first to implement support for AVX-256 x64 double-floating pointer instructions in the compiler back-end, with tests showing that they actually work. Second, he needs to leverage these instructions to the bytecode level designing a small DSL with a micro-compiler compiling from the DSL to bytecode. Lastly, he needs to build a small Matrix or Maths libraries using those instructions and evaluate the performance.
###Level: Advanced

***

##Title: Material Design Lite
###Contact: cyril@ferlicot.me
###Supervisors: Cyril Ferlicot-Delbecque
###Keywords: material design lite, material-ui, seaside, web, components
###Context
Materia Design Lite (https://github.com/DuneSt/MaterialDesignLite) is a set of web components for the Seaside framework based on Google's Material Design guidelines.
###Goal
The goal of this project is to create new components, use these components to create more complexe components and potentialy add tests to the existing components.
###Level: Beginner to Intermediate

***

<img src="http://pharo.org/web/files/pharo-logo-small.png"/><p class="footer">Page last generated on 2018-02-05T16:18:24.03312+00:00 by Pharo5.0 of 16 April 2015 update 50772</p>