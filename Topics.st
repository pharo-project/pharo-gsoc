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
    title: 'Extension of Iceberg to support Fossil';
    contact: 'dmason@ryerson.ca, guillermopolito@gmail.com';
	supervisors: 'Dave Mason, Guillermo Polito';
    keywords: 'iceberg fossil';
    context: 'Iceberg is a significant improvement for cooperative development on Pharo. It is intended to support multiple Version Control Systems, but currently only works with Git. Fossil is another VCS that is a more integrated, full feature alternative, particularly well suited to smaller team development.';
    goal: 'The goal of this project is to add an additional VCS to Iceberg. In addition to making the particular VCS available, dependencies on Git will be exposed and Iceberg will become more generic so that other VCSs, such as Mercurial or SVN, can be more easily added.';
    level: ' Intermediate or Advanced';
    yourself.

PharoTopic new
        title: 'Classes and Methods for Spatial Data';
        contact: 'etienne.delay@cirad.fr serge.stinckwich@ird.fr';
        supervisors: 'Etienne Delay, Serge Stinckwich';
        keywords: 'geography, spatial data, spatial data manipulation,
geographical grammar';
        context: 'As a title of "the economist" The world’s most
valuable resource is no longer oil, but data. Nowadays data and
especially geospatial data become central in our societies. Each one of
us needs to be able to deal with data and spatial data.';
        goal: 'We propose to explore structure to spatial data finding a
way to load different types of geospatial data in Pharo. once the data
is manipulable with our tools the goal is to develop some spatial method
allowing for users to deal with spatial data. For that we will start
from tools already existing in Pharo like the packages : Geometry, Shapes, geo-json and Territorial, but also in other programming languages (as R or python) in
order to implement spatial methods for the community. The main objective will be first to be able to load a geojson file, to visualize it and to basic geometric operations.';
        level: 'Beginner or Intermediate';
        yourself.

PharoTopic new
    title: 'SmartTest, a Test selection tool in a dynamically typed environment';
    contact: 'anne.etien@inria.fr,nicolas.anquetil@inria.fr';
    supervisors: 'Anne Etien, Nicolas Anquetil';
    keywords: 'Test selection, Dynamic analysis, Static analysis';
    context: 'Currently in Pharo, when the developer modifies code, he/she has to know which tests may have been broken to run them or in doubt run all the tests of the class or the project. In that later case, it can be very long. We would like to introduce in Pharo a test selection tool to help the developer in his/her selection. We already developed SmartTest, such a tool, but it is not useable in practice, since it is too long and too intrusive.';
    goal: 'Implement some strategies to enhance the performance of the tool. Evaluate these strategies on real cases studies in an a posteriori experiment. Configure and tune the tool. Evaluate the tool on the field by taking advantage of the community. Put it in the Pharo 8 distribution.';
    level: 'Intermediate';
    yourself.

PharoTopic new
    title: 'Closing the Loop';
    contact: 'stephan@legacycode.nl, christopher.fuhrman@etsmtl.ca';
    supervisors: 'Stephan Eggermont, Christopher Fuhrman';
    keywords: 'deprecations, adaptability';
    context: 'Pharo wants to be able to continue to change and adapt itself to an ever changing environment. In order to do that it needs to become more modular and make currently non-essential code easy to unload and reload on demand. With the in-system tests and CI there currently is a pretty good feedback loop telling Pharo developers when they break existing in-image code.

That feedback loop is much weaker with external code. That code is often not developed in sync with the Pharo development. It is developed against a stable release or against the then current version of the development version. A lot of code is developed in student projects that don''t have the continuity that Pharo itself has. Other code is developed for specific customers who are not interested in upgrading it. Even if there are sufficient tests and an automated build for that code, there often is not enough incentive and priority for it to be kept up to date.

Achieving more adaptability and agility for Pharo can be found by making it easier to keep more code up to date, or by making it easier to bring removed code up to date again. This proposal is about the latter.

When refactoring or rewriting some code, looking at the senders of a message and references to a class is one of the basic things to do to get a good understanding of how that code is actually used. Currently that only works in-image. When Pharo was a 32-bit environment that made sense, but with the current support for large images it should be possible to provide that information for all open source smalltalk code, and also to provide historic/version information for it.   

Some experiments have been done already to establish the viability: code (for older Pharo versions) is available on smalltalkhub: StephanEggermont/DeprecationFinder and StephanEggermont/MonticelloProjects';
    goal: 'Analyze the source code of publicly available monticello/tonel packages and determine which classes and methods are used and defined by them (senders/references) (see DeprecationFinder). For Monticello use the history and deduplicate source code versions to reduce the amount of data that needs to be handled (see MonticelloProjects). Apply to projects on smalltalkhub and older repositories. 

Provide a api and a gui so Pharo developers can quickly access this information, and browse global and historic users.';
    level: 'advanced';
    yourself.

PharoTopic new
    title: 'Projectional Editor for Advanced Pharo Debuggers';
    contact: 'steven.costiou@inria.fr, vincent.aranega@inria.fr';
    supervisors: 'Steven Costiou, Vincent Aranega';
    keywords: 'Debugging Editor IDE AST';
    context: 'Currently in Pharo, the Abstract Syntax Tree (AST) is generated from the source code, and stored into a cache. Each modification of the source code invalidates the cache and triggers the generation of a new AST object. Every annotation of the AST is lost in the process.';
    goal: 'Projectional editors make possible to edit different representation of the same underlying model. This project aims at building a projectional editor which manipulates an AST model instead of source code. With this tool, it will be possible to maintain a permanent representation of the system as an AST, and to new tools directly based on it, as new debugging tools.';
    level: 'Intermediate';
    yourself.

PharoTopic new
    title: 'Dependency Graph in the System Browser';
    contact: 'alexandre.bergel@me.com, akevalion@gmail.com';
    supervisors: 'Alexandre Bergel, Milton Mamani';
    keywords: 'Visualization, Software Engineering, Roassal';
    context: 'Making the dependencies between software components explicit is known to be efficient at improving the quality of source code. Visualizations are commonly employed to represent dependencies between packages, classes, and methods.';
    goal: 'This project is about embedding a visualization within Calypso, the Pharo code browser, that represents dependencies between projects, packages, classes, and methods.';
    level: 'Intermediate';
    yourself.

PharoTopic new
	title: 'Material Design Lite';
	contact: 'cyril (a) ferlicot.me, guillaume.larcheveque (a) gmail.com and yannlesag (a) gmail.com';
	supervisors: 'Cyril Ferlicot-Delbecque, Guillaume Larchevêque, Yann Lesage';
	keywords: 'material design lite, material-ui, seaside, web, components';
	context: 'Materia Design Lite (https://github.com/DuneSt/MaterialDesignLite) is a set of web components for the Seaside framework based on Google''s Material Design guidelines.';
	goal: 'We have multiple ideas to improve the project. (They are just ideas. Students can choose what they prefer)
- Improve the brigde with the meta-description framework that is Magritte
- Add new widgets such as TreeTables, Miller Columns, etc with tests and demos
- Add functional tests with Parasol (Selenium integration for Seaside)
- Creation of a tutorial on how to create a simple Seaside/MDL application
- Writting of documentation
- Improve integration of custom widgets with javascript
- Integration with the Willow stack';
	level: 'Beginner to Intermediate';
	yourself.

	
PharoTopic new
	title: 'Hacking Pharo in Your Web Browser';
	contact: 'luc.fabresse@imt-lille-douai.fr, Damien.pollet@inria.fr';
	supervisors: 'Luc Fabresse, Damien Pollet';
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
	title: 'IPFS for Pharo';
	contact: 'marcus.denker@inria.fr, pavel.krivanek@gmail.com';
	supervisors: 'Marcus Denker, Pavel Krivanek';
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
	yourself.

PharoTopic new
	title: 'Improving code completion';
	contact: 'guillermopolito@gmail.com, olk.zaytsev@gmail.com, esteban.lorenzano@inria.fr, juampiboy@gmail.com';
	supervisors: 'Stéphane Ducasse, Oleksandr Zaitsev, Esteban Lorenzano, Juan Pablo Sandoval Alcocer';
	keywords: 'completion';
	context: 'Automatic completion is really important. The current code completion already defines some good 
behavior but it can do better.';
	goal: 'The goal of the project is to improve the ecompletion infrastructure: 
The tasks are: 
(1) Study the new completion frameworks
(3) Improve the noise introduced by the Symbol table usage, 
(4) build more heuristics.';
	level: 'Intermediate';
	yourself. 

PharoTopic new
	title: 'New Collections for Pharo';
	contact: 'juampiboy@gmail.com, stephane.ducasse@inria.fr';
	supervisors: 'Juan Pablo Sandoval Alcocer, Stéphane Ducasse';
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
	contact: 'stephane.ducasse@inria.fr, guillermopolito@gmail.com';
	supervisors: 'Stéphane Ducasse, Guillermo Polito';
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
	yourself
.

PharoTopic new
       title: 'Pharo Launcher command line interface';
       contact: 'guillermopolito@gmail.com, christophe.demarey@inria.fr';
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
	title: 'DataFrame';
	contact: 'olk.zaytsev@gmail.com, serge.stinckwich@gmail.com, philippeback@gmail.com';
	supervisors: 'Oleksandr Zaitsev, Serge Stinckwich, Philippe Back';
	keywords: 'Data Science, Data Analysis, DataFrame, Tabular Data, Statistics';
	context: 'DataFrame was introduced to Pharo during the GSoC 2017 (https://github.com/PolyMathOrg/DataFrame). The work on DataFrame continued and many new features were introduced by different contributors. However, it is still a work in progress and a huge portion of functionality that can be found in other data frame packages (e.g. R, pandas) is missing.';
	goal: 'The goal of this project is to introduce new functionality to DataFrame (for example, handling missing values) and write examples of applying DataFrame to real problems of Data Science (one can reproduce examples from pandas and scikit-learn documentation, as well as some examples from R-bloggers)';
	level: 'Beginner or Intermediate';
	yourself.
       		
 PharoTopic new
       title: 'Charting library';
       contact: 'cyril@ferlicot.me, julien.delplanque@inria.fr, olk.zaytsev@gmail.com, alexandre.bergel@me.com';
       supervisors: 'Cyril Ferlicot-Delbecque, Julien Delplanque, Oleksandr Zaitsev, Alexandre Bergel';
       keywords: 'Data Visualization, Data Science, Plotting, Grammar of Graphics';
       context: 'In recent years community has been showing great interest in doing scientific computing or data analysis, as well as building machine learning applications in Pharo. Data is central in all those fields. Visualizing data in charts is very important for understanding it and presenting the results. Even though Roassal can be used for plotting data, it has a very generic API and makes even the most simple charts very complicated. Other tools like MatplotLibBridge or ChartJS are just connectors to external libraries which create static images and do not allow us to use some of the most valuable features of Pharo environment, such as live inspection and debugging.';
       goal: 'Build an easy-to-use framework for visualizing data with charts, similar to matplotlib in Python or ggplot2 in R. This tool should have the flexible API based on the Grammar of Graphics. It can be built on top of Pharo''s Geometry library and should be able to use different backends such as Morphic or Bloc interchangeably.';
       level: 'Intermediate or Advanced';
       yourself.
		
 PharoTopic new
       title: 'NLP Library';
       contact: 'olk.zaytsev@gmail.com, alexandre.bergel@me.com';
       supervisors: 'Oleksandr Zaitsev, Alexandre Bergel';
       keywords: 'Natural Language Processing, Statistics, Data Science';
       context: 'Ongoing research that is being done around analysing messages from Discord and letters from mailing lists, exploring commit messages, and performing static analysis of source code is based on simple but irreplaceable algorithms of natural language processing that tokenize text into words, perform stemming and lemmatization of words, count occurrences of words in text etc.';
       goal: 'We need a natural language processing (NLP) library entirely written in Pharo with functionality similar to NLTK or Spacy: part of speech (PoS) tagging, named entity recognition (NER), lemmatization, stemming, word sense disambiguation, tf-idf, n-grams, various metrics etc.';
       level: 'Intermediate or Advanced';
       yourself.

PharoTopic new
       title: 'Authoring and exploring scientific models in Pharo';
       contact: 'konrad.hinsen@cnrs.fr, serge.stinckwich@gmail.com';
       supervisors: 'Konrad Hinsen, Serge Stinckwich';
       keywords: 'scientific models';
       context: 'Scientific research increasingly relies on computational models, but these models are usually not reified in a way that permits sharing and processing them with computational tools. Natural language summaries are incomplete and imprecise, whereas implementations in software are complex and not portable. The digital scientific notation Leibniz (https://github.com/khinsen/leibniz) aims at reifying computational models as specifications rather than implementations.';
       goal: 'Working with scientific models requires interactive tools, both for authoring new models and exploring existing ones. The Pharo live object environment is an excellent basis for developing a suitable interactive workbench. Many individual steps can contribute to such a development: implementing well-known examples from various scientific domains (e.g. Newton''s equations for celestial mechanics or the Lotka-Volterra equations for population dynamics), extensions to Pharo development tools (inspector, debugger, browser, ...) for handling models formulated in Leibniz, etc.';
       level: 'Intermediate';
       yourself.

PharoTopic new
       title: '3D CAD scripting using Smalltalk';
       contact: 'askoh@askoh.com';
       supervisors: 'Aik-Siong Koh';
       keywords: '3D CAD Smalltalk scripting';
       context: 'Just like Python, Smalltalk is an extremely flexible programming environment to create code. Smalltalk has the best IDE and debugger of any programming environment. 3D CAD and Visualization is the standard way of presenting information nowadays. FreeCAD is an open source CAD system with powerful modeling capabilities and beautiful graphics. StFreeCAD will be an open source attempt to combine the best of Pharo Smalltalk and FreeCAD. Smalltalk code can drive FreeCAD directly. The project is to embed FreeCAD inside Pharo Smalltalk IDE.';
       goal: 'Combine the flexibility of Smalltalk with the 3D modeling and visualization of FreeCAD for maximum programming productivity.';
       level: 'Intermediate'; 
       yourself.

PharoTopic new
       title: 'Generic Data Structures to use in the VM';
       contact: 'tesonep@gmail.com, guillermopolito@gmail.com';
       supervisors: 'Pablo Tesone, Guillermo Polito';
       keywords: 'data structures, c language, transpilation';
       context: 'Pharo VM is implemented using a Pharo language subset called Slang. This subset allows us to develop the Pharo VM as any other Pharo program. 
	   By doing so, we can take profit of the power of Pharo and its tools (browsers, refactors, debugger). The VM is simulated and tested as a Pharo program,
	    once it is ready it is transpiled to C and compiled with a normal C compiler. Not all Pharo idiomatics are present in Slang, but it allows us to develop
		programs closer to a Pharo program. However, the powerful collection API of Pharo is not available when the program is transpiled to C. 
		The goal of this topic is to generate a set of common data structures that are possible to translate to C and tested in Pharo. 
		This data structures (e.g., stack, queue, list, heap, set, dictionary) should be implemented in a way that its translation does not affect the performance of
		their users. Also, it includes to generate similar structures with different implementation, so the user have the option to use one or the other 
		(e.g, a list based in an array and a list based in a linked-list).';
       level: 'Intermediate';
       yourself.

PharoTopic new
       title: 'Generating machine code method in the image side';
       contact: 'guillermopolito@gmail.com, tesonep@gmail.com';
       supervisors: 'Guillermo Polito, Pablo Tesone';
       keywords: 'machine code generation, JIT, compilers';
       context: 'The Pharo VM includes a mechanism to compile methods to machine code on the fly. This mechanism allows the VM to execute the more frequent methods as fast as possible.
	   This compilation is done on-the-fly during the execution of the program without interaction with the VM. LLVM provides a way of generating machine code using an intermediate representation.
	   There is an existing binding to use LLVM from Pharo. The objective of this topic is to generate a prototype of an image side compiler that can generate machine code implementations of a given method using LLVM.
	   This mechanism can be used by the user when knowing exactly the type of the parameters and return type. The idea is to implement a prototype similar to Numba (https://numba.pydata.org/).';
       level: 'Advance';
       yourself.

PharoTopic new
       title: 'Packaging the PharoLauncher using Open Build Service';
       contact: 'tesonep@gmail.com, guillermopolito@gmail.com';
       supervisors: 'Pablo Tesone, Guillermo Polito';
       keywords: 'packaging, build process, cmake, distribution, open build service';
       context: 'The Pharo Launcher is an application that is directly installed by the users. This application has developed installers for OSX and Windows, although for Linux installation packages only uses a Zip file.
	   Different Linux distributions have different ways of distributing applications: apt, yum, snap, rpm, etc.
	   Having an application packaged for each of the distributions requires developing all the processes for each of the distributions.
	   Open Build Services is a service provided by the comunity of openSUSE to provide a single way of packaging an application to different distributions.
	   The objective of this topic is to modify the build process of the Pharo Launcher and integrate it with OBS. This objective requires to modify the build process of Pharo Launcher, learn about different build systems, and to implement them in OBS.';
       level: 'Advance';
       yourself.

PharoTopic new
       title: 'Text navigation key-bindings should be aligned with the OS';
       contact: 'guillermopolito@gmail.com, tesonep@gmail.com,';
       supervisors: 'Guillermo Polito, Pablo Tesone';
       keywords: 'text editor, text navigation, key bindings, shortcuts';
       context: 'Pharo is a powerful IDE; it includes a powerful text editor. This editor present all the classical key navigation features (e.g., going to the beginning of the line, to the end of text, next word, etc). However the key bindings used to navigate the text are specific to Pharo (they are similar to the ones in the current OS but not the exact ones), this produce problems to the new comers and make Pharo a little odd in the look and feel of the current operating system. These set of keys are inherited from historical reasons, and some users are used to them. 
	   The objective of this topic is to have a configurable set of key bindings for text navigation, depending on the operating system executing Pharo the key bindings will be different. Also, it is important to keep the traditional set of bindings so users can decided what to use.';
       level: 'Basic';
       yourself.


PharoTopic new
       title: 'Better code importer';
       contact: 'stephane.ducasse@inria.fr';
       supervisors: 'Stéphane Ducasse';
       keywords: 'Code file in/fileout';
       context: 'Pharo is a powerful IDE. However it needs a way to load easily code fragments writing in tonel format. 
The idea is to be able to select, load save code and to replace the old changeset.';
       level: 'Basic';
       yourself.
	   
PharoTopic new
       title: 'Item Collector App';
       contact: 'stephane.ducasse@inria.fr';
       supervisors: 'Stéphane Ducasse';
       keywords: 'items, collector, web, REST, Spec';
       context: 'Little Description is a description language to manage data.
We use it to support the collection of games, books, .... 
The goal of the internship is to improve the support: 
- adding a webserver,
- automatic data to bject mapping
- way to describe automatically data ';
       level: 'Basic';
       yourself.




PharoTopic new
    title: 'ROS+ROS2 On Pharo';
    contact: 'santiago.bragagnolo@inria.fr';
	supervisors: 'Santiago Bragagnolo';
    keywords: 'pharo robotics ros ros2';
    context: 'ROS/ROS2 is a middleware for robotics development open source. It has already more than 10 years, and is starting to seriously move to their version 2. ';
    goal: 'We have already a large library on the development of ROS1 applications. In this context objective would be to develop the bindings to ROS2 and integrate it into the existing libraries. ';
    level: ' Intermediate or Advanced';
    yourself.



PharoTopic new
    title: 'Blockchain On Pharo';
    contact: 'santiago.bragagnolo@inria.fr,';
	supervisors: 'Santiago Bragagnolo';
    keywords: 'pharo blockchain ethereum';
    context: 'Blockchain is a pervasive technology. Interaction with distribtued smart contracts seems to be an unavoidable future. And the future is now. ';
    goal: 'Pharo counts with a powerful library for interacting with Ethereum network. There are three main possible objectives: 1- enhance the navigation capabilities of Fog 2- Integrate Fog With Moose or 3- Enable new blockchain networks for the library ';
    level: ' Intermediate or Advanced';
    yourself.

PharoTopic new
       title: 'Using CFG to analyze tests';
       contact: 'goca@dmi.uns.ac.rs, tesonep@gmail.com';
       supervisors: 'Gordana Rakic, Pablo Tesone';
       keywords: 'control-graph-flow, ast, tests, software analysis';
       context: 'The objective of this goal is to produce an initial model that represents the Control-Graph-Flow (CFG) of an Pharo application. 
For doing so, we need to perform an static analysis on the program. The analysis of the program is done traversing Abstract Syntax Tree (AST) of the methods, and class definitions.
Pharo provides a set of existent tools to manipulate and traverse ASTs, and reflective tools to inspect programs in Pharo.
Also, there are implementations of required tools to be used or extended (AST interpreters, CFG extraction tools, type inferers (Phineas), etc).
This task can be divided in three main points: (1) developing the CFG model, (2) extract the information from the Pharo AST, (3) perform traversal and analyses over it. 
For extracting the information in the AST and form the CGF, the student should use tools already existent in Pharo (AST interpreters / Type inferer). 
Finally, it can be possible to perform an analysis on the existing information. For example, it is possible to extract the effective classes and methods that are covered by a given test; or calculate the dependencies between classes and methods.
This topic provides an oportunity of working on the metalevel of programs, the student will learn how to get information from an existing program, and how to reflect about it. 
These tools and abilities are basic when working with programming languages, refactorings, tools, etc.';
       level: 'Intermediate';
       yourself.



