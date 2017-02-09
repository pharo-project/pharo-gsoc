#Pharo GSOC Topics

* [Distributed Issue Tracker](#title-distributed-issue-tracker)
* [Weather/Meteo for OpenStreetMap in Roassal](#title-weathermeteo-for-openstreetmap-in-roassal)
* [GRASS integration with Pharoo/Roassal](#title-grass-integration-with-pharooroassal)
* [Statistics Library with Polymath](#title-statistics-library-with-polymath)
* [Two-way synchronized code changes, better support for cross-platform co-development ](#title-two-way-synchronized-code-changes-better-support-for-cross-platform-co-development-)
* [IPFS for Pharo](#title-ipfs-for-pharo)
* [Make for Pharo in Pharo](#title-make-for-pharo-in-pharo)
* [Scrapping Data: Enhancing User Experience](#title-scrapping-data-enhancing-user-experience)
* [Improving code completion](#title-improving-code-completion)
* [Taking Advantage of Immutable Objects](#title-taking-advantage-of-immutable-objects)
* [New Collections for Pharo](#title-new-collections-for-pharo)
* [Enhancing Pillar](#title-enhancing-pillar)
* [Enhance Pharo Command Line Interface](#title-enhance-pharo-command-line-interface)

##Title: Distributed Issue Tracker
###Contact: stephan@stack.nl
###Supervisors: Stephan Eggermont, Diego Lont
###Keywords: P2P Tools GUI
###Context
Technical Details

The recent decision by Google to deprecate and stop its API for the Google Issue Tracker used by a.o. the Pharo, Seaside, MOOSE and Metacello projects makes it necessary for those projects to select a different issue tracker. The timespan before this decision has to be made is too short for the development of a new issue tracker from scratch. 

Now most development in Smalltalk uses distributed version control systems, either Monticello or Git, the question arises why these projects still would want to use a centralized issue tracker. The long-standing problems in keeping squeaksource up-and-running are only one example of the problems of depending on centralized infrastructure. Other examples are the move of Lukas' repository and the number of times where the Pharo CI infrastructure was not available, especially on holidays and weekends.

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
showcase for productive environment  
###Goal
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

###Level: Advanced

***

##Title: Weather/Meteo for OpenStreetMap in Roassal
###Contact: onil.goubier@gmail.com
###Supervisors: O. Goubier
###Keywords: Grib,  OpenStreetMaps, Roassal
###Context

With Roassal and OpenStreetMap, it is possible to explore geo-referenced data sets and easily script complex, interactive, geo-referenced
visualisations. Now, there is a lot of external data sources to use and integrate with Roassal!
###Goal

The goal of this project is to add a support for importing Grib data sets (https://en.wikipedia.org/wiki/GRIB) in Roassal. Those
datasets give access to weather information and predictions from many sources, and we need a support to import such files into
Pharo and Roassal
###Level: intermediate

***

##Title: GRASS integration with Pharoo/Roassal
###Contact: onil.goubier@gmail.com
###Supervisors: O. Goubier
###Keywords: GIS, GRASS, Roassal
###Context

With Roassal and OpenStreetMap, it is possible to explore geo-referenced data sets and easily script complex, interactive, geo-referenced
visualisations. Now, there is a lot of external data sources to use and integrate with Roassal!
###Goal

The goal of this project is to integrate GRASS (https://grass.osgeo.org/) with Pharo. GRASS provides an extensive set of
advanced GIS functions (modeling, simulations, data import, projections, etc...) and should be integrated inside Pharo,
first as a set of external commands (with a Pharo-based GUI front-end), and maybe as a FFI interface.
###Level: intermediate

***

##Title: Statistics Library with Polymath
###Contact: serge DOT stinckwich AT ird DOT fr
###Supervisors: Serge Stinckwich
###Keywords: statistic mathematics science
###Context
PolyMath is a new Smalltalk project, similar to existing scientific libraries like NumPy, SciPy for Python or SciRuby for Ruby. PolyMath already provide the following basic functionalities:
	complex and quaternions extensions, random number generators, fuzzy algorithms, KDE-trees, numerical methods, Ordinary Differential Equation (ODE) solvers.
###Goal
Add some statistics functions to PolyMath.
###Level: Intermediate

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
 IPFS is a peer-to-peer distributed file system that seeks to connect all computing devices with the same system of files. In some ways, IPFS is similar to the Web, but IPFS could be seen as a single BitTorrent swarm, exchanging objects within one Git repository. In other words, IPFS provides a high throughput content-addressed block storage model, with content-addressed hyperlinks. This forms a generalized Merkle DAG, a data structure upon which one can build versioned file systems, blockchains, and even a Permanent Web. IPFS combines a distributed hashtable, an incentivized block exchange, and a self-certifying namespace. IPFS has no single point of failure, and nodes do not need to trust each other.
IPFS right now is implemented as a server process in Go and allows the global file system to be mounted as a user space filesystem. In addition, the server provides an API.
A real integration of IPFS with Pharo would require a complete implementation of IPFS in Pharo (projects are already in early stages to implement it in JavaScript and Python).
But the client API allows us already now to do experiments and assess the usefulness of IPFS in the context of Pharo. 
More information:
	https://ipfs.io

###Goal
The goal of this Project is to implement a IPFS client library using the API to communicate with the existing server and start to experiment
how IPFS can be used with Pharo. For example, extend the launcher to load images via IPFS, distribute the files of smalltalkhub or provide
access to resources via IPFS.
###Level: Normal

***

##Title: Make for Pharo in Pharo
###Contact: stephane.ducasse@inria.fr
###Supervisors: stephane.ducasse@inria.fr
###Keywords: Make graph
###Context

Make is a unix tool to express dependencies between task. Now it is not really cross-platform. Python has a library that implements make on 
top of a graph library. It would be really nice to have a solution for Pharo using the same idea.
- http://aosabook.org/en/500L/contingent-a-fully-dynamic-build-system.html
MCHttpRepository
	location: 'http://smalltalkhub.com/mc/CipT/MelcGraph/main'
	user: ''
	password: ''

###Goal
The goal of this project is to develop a make like implementation in Pharo using the graph library MelcGraph developed by C. Teodorov.
###Level: Normal

***

##Title: Scrapping Data: Enhancing User Experience
###Contact: alexandre.bergel@me.com 
###Supervisors: alexandre.bergel@me.com 
###Keywords: CVS 
###Context

###Goal
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

###Level: Normal

***

##Title: Improving code completion
###Contact: stephane.ducasse@inria.fr
###Supervisors: S. Ducasse and E. Lorenzano
###Keywords: completion
###Context
Automatic completion is really important. The current code completion already defines some good behavior but 
it can do better.
###Goal
The goal of the project is to improve the ecompletion infrastructure: The tasks are: (1) study the existing approaches (NOC and NEC), (2) Write some tests to characterize specific behavior, (3) Improve the noise introduced by the Symbol table usage. (4) build more heuristics.
###Level: Intermediate

***

##Title: Taking Advantage of Immutable Objects
###Contact: clement.bera@inria.fr and Stephane.ducasse@inria.fr
###Supervisors: C. Bera and S. Ducasse
###Keywords: completion
###Context
Pharo since its version 60 supports object immutability primitives at the Virtual Machine level
as explained here https://clementbera.wordpress.com/2016/01/24/introducing-immutability-in-the-cog-vm/.

It means that once marked as immutable objects cannot be modified and raise an error. 
For deep Virtual machine optimisations that fold stack elements, having strings as immutable objects is key. Now the core Pharo libraries may still use some mutable strings.
Therefore the core libraries of Pharo should be revisited to identify use of mutable structures.

Now we face several challenges:
	- Identification of part thats can be migrated to immutable objects.
	- Identification of patterns of potential problems.

In addition, there is a need to propose to the Pharo developers a way to take advantage of immutability. A typical example is the use of write barrier (to identify objects that changes and therefore should be committed to database). We need to explore the design of a frameworks to let the developer expresses what should be done when an immutable object detects an attempt to modify it.  

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
###Supervisors:  Stéphane Ducasse
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

##Title: Enhance Pharo Command Line Interface
###Contact: guillermopolito@gmail.com
###Supervisors: guillermopolito@gmail.com
###Keywords: terminal commandline bash scripting
###Context
The command line handler framework is the most used alternative for command line interaction with Pharo applications. Several default command line handlers come defined in the framework for interacting with the environment (evaluate code, install packages, etc.). Users can also extend this framework to introduce application specific command line behaviours in Pharo. Additionally to this development effort, the Scale library (https://github.com/guillep/Scale) has been developed to allow using Pharo from the command line for scripting purposes.
These tools proved useful to the pharo community, as they are used in many projects for e.g., building, deploying or testing. But also, they pushed the pharo infrastructure and took to the surface several problems present in the underlying core libraries that difficults the deployment and usage in typical unix-like environments.
###Goal
The main goal of this project is to enhance the command line management in pharo to enhance the user experience in unix-like environments. We identify several tasks for the student, that should be accomplished in the 12 week lapse:
  - Complete, Test and integrate a better alternative for command line parsing such as Clap (https://github.com/cdlm/clap-st)
  - fix working directory (pwd): today pharo uses the image directory as working directory, causing several glitches when the image is used from a differen directory.
  - fix logging: pharo logs nowadays in the directory where the image is. We should be capable to define wether the logging should happen depending on the distribution or the environment (e.g., /var/log).
  - fix general file management: pharo wrongly reads and writes files relative to its `working` directory.

In general terms these development tasks include implicitly their integration into the main development branch of Pharo. This means that the student will also communicate with the Pharo open source community and follow the community's quality guidelines and process of integration and validation.

The student will learn from this project:
  - Basics of scripting
  - Good practices of deployment and building applications
  - Core parts of the Pharo language such as the File library
  - How to interact with a big open source community
  - Basic sw engineering practices
  
Resources:
  - Pharo Command Line Handlers: https://github.com/guillep/pharo-core/tree/master/src/System-CommandLineHandler.package
  - Clap: https://github.com/cdlm/clap-st
  - Scale: https://github.com/guillep/Scale

###Level: Normal

***

<img src="http://pharo.org/web/files/pharo-logo-small.png"/><p class="footer">Page last generated on 2017-02-09T18:18:14.890085+00:00 by Pharo5.0 of 16 April 2015 update 50768</p>