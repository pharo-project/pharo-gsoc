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
contact: 'stephane.ducasse@inria.fr (and sven?) (and alexandre bergel)';
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
	title: 'Taking Advantage of Immutable Objects';
	contact: 'clement.bera@inria.fr and Stephane.ducasse@inria.fr';
	supervisors: 'C. Bera and S. Ducasse';
	keywords: 'completion';
	context: 'Pharo since its version 60 supports object immutability primitives at the Virtual Machine level
as explained here https://clementbera.wordpress.com/2016/01/24/introducing-immutability-in-the-cog-vm/.

It means that once marked as immutable objects cannot be modified and raise an error. 
For deep Virtual machine optimisations that fold stack elements, having strings as immutable objects is key. Now the core Pharo libraries may still use some mutable strings.
Therefore the core libraries of Pharo should be revisited to identify use of mutable structures.

Now we face several challenges:
	- Identification of part thats can be migrated to immutable objects.
	- Identification of patterns of potential problems.

In addition, there is a need to propose to the Pharo developers a way to take advantage of immutability. A typical example is the use of write barrier (to identify objects that changes and therefore should be committed to database). We need to explore the design of a frameworks to let the developer expresses what should be done when an immutable object detects an attempt to modify it.  
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
	 'The goal of the project is to improve the ecompletion infrastructure: The tasks are: (1) study the existing approaches (NOC and NEC), (2) Write some tests to characterize specific behavior, (3) Improve the noise introduced by the Symbol table usage. (4) build more heuristics.';
	level: 'Intermediate';
	yourself
    

. 

PharoTopic new
	title: 'New Collections for Pharo';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: 'Stephane Ducasse';
	keywords: 'Collection DataStructure Benchmarks';
	context:: 'Pharo contains a large set of collections (See http://books.pharo.org/ PharoByExample Collections chapter)
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
- Barry Hayes, Proceedings OOPSLA ''97, ACM SIGPLAN Notices, Ephemerons: A new finalization mechanism, 1997'

yourself


.

PharoTopic new
	title: 'Enhancing Pillar';
	contact: 'stephane.ducasse@inria.fr';
	supervisors: ' Stéphane Ducasse';
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
  title: 'Enhance Pharo Command Line Interface';
  contact: 'guillermopolito@gmail.com';
  supervisors: 'guillermopolito@gmail.com';
  keywords: 'terminal commandline bash scripting';
  context: 'The command line handler framework is the most used alternative for command line interaction with Pharo applications. Several default command line handlers come defined in the framework for interacting with the environment (evaluate code, install packages, etc.). Users can also extend this framework to introduce application specific command line behaviours in Pharo. Additionally to this development effort, the Scale library (https://github.com/guillep/Scale) has been developed to allow using Pharo from the command line for scripting purposes.
These tools proved useful to the pharo community, as they are used in many projects for e.g., building, deploying or testing. But also, they pushed the pharo infrastructure and took to the surface several problems present in the underlying core libraries that difficults the deployment and usage in typical unix-like environments.';
  goal: 'The main goal of this project is to enhance the command line management in pharo to enhance the user experience in unix-like environments. We identify several tasks for the student, that should be accomplished in the 12 week lapse:
  - Complete, Test and integrate a better alternative for command line parsing such as Clap (https://github.com/cdlm/clap-st)
  - fix working directory (pwd): today pharo uses the image directory as working directory, causing several glitches when the image is used from a differen directory.
  - fix logging: pharo logs nowadays in the directory where the image is. We should be capable to define wether the logging should happen depending on the distribution or the environment (e.g., /var/log).
  - fix general file management: pharo wrongly reads and writes files relative to its `working` directory.

In general terms these development tasks include implicitly their integration into the main development branch of Pharo. This means that the student will also communicate with the Pharo open source community and follow the community''s quality guidelines and process of integration and validation.

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
'; 
level: 'Normal';
yourself.
