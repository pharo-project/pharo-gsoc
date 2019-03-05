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
    title: 'Better and more refactorings for Pharo';
    contact: 'christophe.demarey@inria.fr, pablo.tesone@inria.fr, juampiboy@gmail.com';
    supervisors: 'Christophe Demarey, Pablo Tesone, Juan Pablo Sandoval A';
    keywords: 'Refactoring IDE';
    context: 'Smalltalk was the first environment to have such great refactorings that inspired a lot of languages and book authors. Unfortunately, refactoring support lowered in quality and some of them are now missing in Pharo.';
    goal: 'The goal of this project is to provide Pharo developers a good refactoring support, comparable to modern IDEs like IDEA Intellij. See https://github.com/pharo-project/pharo-project-proposals/blob/master/refactoring.md for a detailed list of tasks.';
    level: 'Beginner';
    yourself
	
.

PharoTopic new
	title: 'Material Design Lite';
	contact: 'cyril (a) ferlicot.me, guillaume.larcheveque (a) gmail.com and yannlesag (a) gmail.com';
	supervisors: 'Cyril Ferlicot-Delbecque, Guillaume Larchevêque and Yann Lesage';
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
	contact: 'marcus.denker@inria.fr';
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
	contact: 'stephane.ducasse@inria.fr, olk.zaytsev@gmail.com, esteban.lorenzano@inria.fr, juampiboy@gmail.com';
	supervisors: 'Stéphane Ducasse, Oleksanrd Zaitsev, Esteban Lorenzano, Juan Pablo Sandoval Alcocer';
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
       title: 'Next Generation Unit Testing';
       contact: 'guillermopolito@gmail.com, julien.delplanque@inria.fr';
       supervisors: 'Guillermo Polito, Julien Delplanque';
       keywords: 'unit testing, parallelization, configuration';
       context: 'SUnit is the current unit testing framework in Pharo. Building complex applications require new testing capabilities, with an enhanced UI and a clear API that allows new extensions.';
       goal: 'The goal of this project is to redesign the SUnit framework to be extensible. The extension points and hooks in the framework should allow users to create their own extensions. Moreover, the student will implement extensions for common testing scenarios such as concurrency and parameterized tests.';
       level: 'Intermediate';
       yourself.
	   
PharoTopic new
	title: 'DataFrame';
	contact: 'olk.zaytsev@gmail.com, serge.stinckwich@gmail.com';
	supervisors: 'Oleksandr Zaytsev, Serge Stinckwich';
	keywords: 'Data Science, Data Analysis, DataFrame, Tabular Data, Statistics';
	context: 'DataFrame was introduced to Pharo during the GSoC 2017 (https://github.com/PolyMathOrg/DataFrame). The work on DataFrame continued and many new features were introduced by different contributors. However, it is still a work in progress and a huge portion of functionality that can be found in other data frame packages (e.g. R, pandas) is missing.';
	goal: 'The goal of this project is to introduce new functionality to DataFrame (for example, handling missing values) and write examples of applying DataFrame to real problems of Data Science (one can reproduce examples from pandas and scikit-learn documentation, as well as some examples from R-bloggers)';
	level: 'Beginner or Intermediate';
	yourself.

PharoTopic new
    title: 'Iceberg UI: Providing a commit graph visualization';
    contact: 'juampiboy@gmail.com, guillermopolito@gmail.com';
    supervisors: 'Juan Pablo Sandoval Alcocer, Guillermo Polito';
    keywords: 'commit, visualization, iceberg';
    context: 'Iceberg provides tools for handling git repositories directly from a Pharo Image.  Besides the facilities provided by Iceberg, there is a lot room for improvement.';
    goal: 'The goal of this project is to provide a commit graph visualization for improving the commit navigation and comparison, such the ones offered by popular git clients (i.e. GitKraken).';
    level: 'Beginner to Intermediate';
    yourself.
       		
 PharoTopic new
       title: 'Charting library';
       contact: 'cyril@ferlicot.me, julien.delplanque@inria.fr, olk.zaytsev@gmail.com, alexandre.bergel@me.com';
       supervisors: 'Cyril Ferlicot-Delbecque, Julien Delplanque, Oleksandr Zaytsev, Alexandre Bergel';
       keywords: 'Data Visualization, Data Science, Plotting, Grammar of Graphics';
       context: 'In recent years community has been showing great interest in doing scientific computing or data analysis, as well as building machine learning applications in Pharo. Data is central in all those fields. Visualizing data in charts is very important for understanding it and presenting the results. Even though Roassal can be used for plotting data, it has a very generic API and makes even the most simple charts very complicated. Other tools like MatplotLibBridge or ChartJS are just connectors to external libraries which create static images and do not allow us to use some of the most valuable features of Pharo environment, such as live inspection and debugging.';
       goal: 'Build an easy-to-use framework for visualizing data with charts, similar to matplotlib in Python or ggplot2 in R. This tool should have the flexible API based on the Grammar of Graphics. It can be built on top of Pharo''s Geometry library and should be able to use different backends such as Morphic or Bloc interchangeably.';
       level: 'Intermediate or Advanced';
       yourself.
		
 PharoTopic new
       title: 'NLP Library';
       contact: 'olk.zaytsev@gmail.com, alexandre.bergel@me.com';
       supervisors: 'Oleksandr Zaytsev, Alexandre Bergel';
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
       title: 'Spec Debugging Tools';
       contact: 'guillermopolito@gmail.com tesonep@gmail.com';
       supervisors: 'Guillermo Polito, Pablo Tesone';
       keywords: 'ui debugging';
       context: 'Spec is a UI framework providing a component model with pluggable backends. This makes sometimes difficult to understand the composition structure and go from the UI to the corresponding code.';
       goal: 'The goal of this project is to develop several debugging facilities to help understanding Spec UIs. For example, click on a component and go to its code, highlight component boundaries on mouse over.';
       level: 'Beginner';
       yourself.

 PharoTopic new
       title: 'Spec Cassowary Layout';
       contact: 'tesonep@gmail.com guillermopolito@gmail.com';
       supervisors: 'Pablo Tesone, Guillermo Polito';
       keywords: 'ui algorithm';
       context: 'Spec is a UI framework providing a component model with pluggable backends. The current layouting options provide boxes, panes and grids.';
       goal: 'The goal of this project is to develop a cassowary layout for Spec using existing constraint solvers. The student will need to define a DSL to describe constraints and define what are the minimal set of constraints components should have.';
       level: 'Advanced';
       yourself.
   
