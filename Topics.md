#Pharo GSOC Topics

* [Classes and Methods for Spatial Data](#title-classes-and-methods-for-spatial-data)
* [SmartTest, a Test selection tool in a dynamically typed environment](#title-smarttest-a-test-selection-tool-in-a-dynamically-typed-environment)
* [Closing the Loop](#title-closing-the-loop)
* [Projectional Editor for Advanced Pharo Debuggers](#title-projectional-editor-for-advanced-pharo-debuggers)
* [Dependency Graph in the System Browser](#title-dependency-graph-in-the-system-browser)
* [Better and more refactorings for Pharo](#title-better-and-more-refactorings-for-pharo)
* [Material Design Lite](#title-material-design-lite)
* [Hacking Pharo in Your Web Browser](#title-hacking-pharo-in-your-web-browser)
* [IPFS for Pharo](#title-ipfs-for-pharo)
* [Improving code completion](#title-improving-code-completion)
* [New Collections for Pharo](#title-new-collections-for-pharo)
* [Enhancing Pillar](#title-enhancing-pillar)
* [Pharo Launcher command line interface](#title-pharo-launcher-command-line-interface)
* [Next Generation Unit Testing](#title-next-generation-unit-testing)
* [DataFrame](#title-dataframe)
* [Iceberg UI: Providing a commit graph visualization](#title-iceberg-ui-providing-a-commit-graph-visualization)
* [Charting library](#title-charting-library)
* [NLP Library](#title-nlp-library)
* [Authoring and exploring scientific models in Pharo](#title-authoring-and-exploring-scientific-models-in-pharo)
* [Spec Debugging Tools](#title-spec-debugging-tools)
* [Spec Cassowary Layout](#title-spec-cassowary-layout)

##Title: Classes and Methods for Spatial Data
###Contact: etienne.delay@cirad.fr serge.stinckwich@ird.fr
###Supervisors: Etienne Delay, Serge Stinckwich
###Keywords: geography, spatial data, spatial data manipulation,
geographical grammar
###Context
As a title of "the economist" The world’s most
valuable resource is no longer oil, but data. Nowadays data and
especially geospatial data become central in our societies. Each one of
us needs to be able to deal with data and spatial data.
###Goal
We propose to explore structure to spatial data finding a
way to load different types of geospatial data in Pharo. once the data
is manipulable with our tools the goal is to develop some spatial method
allowing for users to deal with spatial data. For that we will start
from tools already existing in Pharo like the packages : Geometry, Shapes, geo-json and Territorial, but also in other programming languages (as R or python) in
order to implement spatial methods for the community. The main objective will be first to be able to load a geojson file, to visualize it and to basic geometric operations.
###Level: Beginner or Intermediate

***

##Title: SmartTest, a Test selection tool in a dynamically typed environment
###Contact: anne.etien@inria.fr,nicolas.anquetil@inria.fr
###Supervisors: Anne Etien, Nicolas Anquetil
###Keywords: Test selection, Dynamic analysis, Static analysis
###Context
Currently in Pharo, when the developer modifies code, he/she has to know which tests may have been broken to run them or in doubt run all the tests of the class or the project. In that later case, it can be very long. We would like to introduce in Pharo a test selection tool to help the developer in his/her selection. We already developed SmartTest, such a tool, but it is not useable in practice, since it is too long and too intrusive.
###Goal
Implement some strategies to enhance the performance of the tool. Evaluate these strategies on real cases studies in an a posteriori experiment. Configure and tune the tool. Evaluate the tool on the field by taking advantage of the community. Put it in the Pharo 8 distribution.
###Level: Intermediate

***

##Title: Closing the Loop
###Contact: stephan@legacycode.nl, christopher.fuhrman@etsmtl.ca
###Supervisors: Stephan Eggermont, Christopher Fuhrman
###Keywords: deprecations, adaptability
###Context
Pharo wants to be able to continue to change and adapt itself to an ever changing environment. In order to do that it needs to become more modular and make currently non-essential code easy to unload and reload on demand. With the in-system tests and CI there currently is a pretty good feedback loop telling Pharo developers when they break existing in-image code.

That feedback loop is much weaker with external code. That code is often not developed in sync with the Pharo development. It is developed against a stable release or against the then current version of the development version. A lot of code is developed in student projects that don't have the continuity that Pharo itself has. Other code is developed for specific customers who are not interested in upgrading it. Even if there are sufficient tests and an automated build for that code, there often is not enough incentive and priority for it to be kept up to date.

Achieving more adaptability and agility for Pharo can be found by making it easier to keep more code up to date, or by making it easier to bring removed code up to date again. This proposal is about the latter.

When refactoring or rewriting some code, looking at the senders of a message and references to a class is one of the basic things to do to get a good understanding of how that code is actually used. Currently that only works in-image. When Pharo was a 32-bit environment that made sense, but with the current support for large images it should be possible to provide that information for all open source smalltalk code, and also to provide historic/version information for it.   

Some experiments have been done already to establish the viability: code (for older Pharo versions) is available on smalltalkhub: StephanEggermont/DeprecationFinder and StephanEggermont/MonticelloProjects
###Goal
Analyze the source code of publicly available monticello/tonel packages and determine which classes and methods are used and defined by them (senders/references) (see DeprecationFinder). For Monticello use the history and deduplicate source code versions to reduce the amount of data that needs to be handled (see MonticelloProjects). Apply to projects on smalltalkhub and older repositories. 

Provide a api and a gui so Pharo developers can quickly access this information, and browse global and historic users.
###Level: advanced

***

##Title: Projectional Editor for Advanced Pharo Debuggers
###Contact: steven.costiou@inria.fr, vincent.aranega@inria.fr
###Supervisors: Steven Costiou, Vincent Aranega
###Keywords: Debugging Editor IDE AST
###Context
Currently in Pharo, the Abstract Syntax Tree (AST) is generated from the source code, and stored into a cache. Each modification of the source code invalidates the cache and triggers the generation of a new AST object. Every annotation of the AST is lost in the process.
###Goal
Projectional editors make possible to edit different representation of the same underlying model. This project aims at building a projectional editor which manipulates an AST model instead of source code. With this tool, it will be possible to maintain a permanent representation of the system as an AST, and to new tools directly based on it, as new debugging tools.
###Level: Intermediate

***

##Title: Dependency Graph in the System Browser
###Contact: alexandre.bergel@me.com, akevalion@gmail.com
###Supervisors: Alexandre Bergel, Milton Mamani
###Keywords: Visualization, Software Engineering, Roassal
###Context
Making the dependencies between software components explicit is known to be efficient at improving the quality of source code. Visualizations are commonly employed to represent dependencies between packages, classes, and methods.
###Goal
This project is about embedding a visualization within Calypso, the Pharo code browser, that represents dependencies between projects, packages, classes, and methods.
###Level: Intermediate

***

##Title: Better and more refactorings for Pharo
###Contact: christophe.demarey@inria.fr, pablo.tesone@inria.fr, juampiboy@gmail.com
###Supervisors: Christophe Demarey, Pablo Tesone, Juan Pablo Sandoval A
###Keywords: Refactoring IDE
###Context
Smalltalk was the first environment to have such great refactorings that inspired a lot of languages and book authors. Unfortunately, refactoring support lowered in quality and some of them are now missing in Pharo.
###Goal
The goal of this project is to provide Pharo developers a good refactoring support, comparable to modern IDEs like IDEA Intellij. See https://github.com/pharo-project/pharo-project-proposals/blob/master/refactoring.md for a detailed list of tasks.
###Level: Beginner

***

##Title: Material Design Lite
###Contact: cyril (a) ferlicot.me, guillaume.larcheveque (a) gmail.com and yannlesag (a) gmail.com
###Supervisors: Cyril Ferlicot-Delbecque, Guillaume Larchevêque and Yann Lesage
###Keywords: material design lite, material-ui, seaside, web, components
###Context
Materia Design Lite (https://github.com/DuneSt/MaterialDesignLite) is a set of web components for the Seaside framework based on Google's Material Design guidelines.
###Goal
We have multiple ideas to improve the project. (They are just ideas. Students can choose what they prefer)
- Improve the brigde with the meta-description framework that is Magritte
- Add new widgets such as TreeTables, Miller Columns, etc with tests and demos
- Add functional tests with Parasol (Selenium integration for Seaside)
- Creation of a tutorial on how to create a simple Seaside/MDL application
- Writting of documentation
- Improve integration of custom widgets with javascript
- Integration with the Willow stack
###Level: Beginner to Intermediate

***

##Title: Hacking Pharo in Your Web Browser
###Contact: luc.fabresse@imt-lille-douai.fr, Damien.pollet@inria.fr
###Supervisors: Luc Fabresse, Damien Pollet
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

##Title: IPFS for Pharo
###Contact: marcus.denker@inria.fr, pavel.krivanek@gmail.com
###Supervisors: Marcus Denker, Pavel Krivanek
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
###Contact: stephane.ducasse@inria.fr, olk.zaytsev@gmail.com, esteban.lorenzano@inria.fr, juampiboy@gmail.com
###Supervisors: Stéphane Ducasse, Oleksanrd Zaitsev, Esteban Lorenzano, Juan Pablo Sandoval Alcocer
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
###Contact: juampiboy@gmail.com, stephane.ducasse@inria.fr
###Supervisors: Juan Pablo Sandoval Alcocer, Stéphane Ducasse
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
###Contact: stephane.ducasse@inria.fr, guillermopolito@gmail.com
###Supervisors: Stéphane Ducasse, Guillermo Polito
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

##Title: Pharo Launcher command line interface
###Contact: guillermopolito@gmail.com, christophe.demarey@inria.fr
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
###Contact: guillermopolito@gmail.com, julien.delplanque@inria.fr
###Supervisors: Guillermo Polito, Julien Delplanque
###Keywords: unit testing, parallelization, configuration
###Context
SUnit is the current unit testing framework in Pharo. Building complex applications require new testing capabilities, with an enhanced UI and a clear API that allows new extensions.
###Goal
The goal of this project is to redesign the SUnit framework to be extensible. The extension points and hooks in the framework should allow users to create their own extensions. Moreover, the student will implement extensions for common testing scenarios such as concurrency and parameterized tests.
###Level: Intermediate

***

##Title: DataFrame
###Contact: olk.zaytsev@gmail.com, serge.stinckwich@gmail.com
###Supervisors: Oleksandr Zaytsev, Serge Stinckwich
###Keywords: Data Science, Data Analysis, DataFrame, Tabular Data, Statistics
###Context
DataFrame was introduced to Pharo during the GSoC 2017 (https://github.com/PolyMathOrg/DataFrame). The work on DataFrame continued and many new features were introduced by different contributors. However, it is still a work in progress and a huge portion of functionality that can be found in other data frame packages (e.g. R, pandas) is missing.
###Goal
The goal of this project is to introduce new functionality to DataFrame (for example, handling missing values) and write examples of applying DataFrame to real problems of Data Science (one can reproduce examples from pandas and scikit-learn documentation, as well as some examples from R-bloggers)
###Level: Beginner or Intermediate

***

##Title: Iceberg UI: Providing a commit graph visualization
###Contact: juampiboy@gmail.com, guillermopolito@gmail.com
###Supervisors: Juan Pablo Sandoval Alcocer, Guillermo Polito
###Keywords: commit, visualization, iceberg
###Context
Iceberg provides tools for handling git repositories directly from a Pharo Image.  Besides the facilities provided by Iceberg, there is a lot room for improvement.
###Goal
The goal of this project is to provide a commit graph visualization for improving the commit navigation and comparison, such the ones offered by popular git clients (i.e. GitKraken). Currently, there is a basic, commit graph visualization implemented called https://github.com/tinchodias/hiedra. However, there is many things we can improve on the visualization and the Iceberg UI. For instance, branch colors, filtering, scalability, and many other interactions.
###Level: Beginner to Intermediate

***

##Title: Charting library
###Contact: cyril@ferlicot.me, julien.delplanque@inria.fr, olk.zaytsev@gmail.com, alexandre.bergel@me.com
###Supervisors: Cyril Ferlicot-Delbecque, Julien Delplanque, Oleksandr Zaytsev, Alexandre Bergel
###Keywords: Data Visualization, Data Science, Plotting, Grammar of Graphics
###Context
In recent years community has been showing great interest in doing scientific computing or data analysis, as well as building machine learning applications in Pharo. Data is central in all those fields. Visualizing data in charts is very important for understanding it and presenting the results. Even though Roassal can be used for plotting data, it has a very generic API and makes even the most simple charts very complicated. Other tools like MatplotLibBridge or ChartJS are just connectors to external libraries which create static images and do not allow us to use some of the most valuable features of Pharo environment, such as live inspection and debugging.
###Goal
Build an easy-to-use framework for visualizing data with charts, similar to matplotlib in Python or ggplot2 in R. This tool should have the flexible API based on the Grammar of Graphics. It can be built on top of Pharo's Geometry library and should be able to use different backends such as Morphic or Bloc interchangeably.
###Level: Intermediate or Advanced

***

##Title: NLP Library
###Contact: olk.zaytsev@gmail.com, alexandre.bergel@me.com
###Supervisors: Oleksandr Zaytsev, Alexandre Bergel
###Keywords: Natural Language Processing, Statistics, Data Science
###Context
Ongoing research that is being done around analysing messages from Discord and letters from mailing lists, exploring commit messages, and performing static analysis of source code is based on simple but irreplaceable algorithms of natural language processing that tokenize text into words, perform stemming and lemmatization of words, count occurrences of words in text etc.
###Goal
We need a natural language processing (NLP) library entirely written in Pharo with functionality similar to NLTK or Spacy: part of speech (PoS) tagging, named entity recognition (NER), lemmatization, stemming, word sense disambiguation, tf-idf, n-grams, various metrics etc.
###Level: Intermediate or Advanced

***

##Title: Authoring and exploring scientific models in Pharo
###Contact: konrad.hinsen@cnrs.fr, serge.stinckwich@gmail.com
###Supervisors: Konrad Hinsen, Serge Stinckwich
###Keywords: scientific models
###Context
Scientific research increasingly relies on computational models, but these models are usually not reified in a way that permits sharing and processing them with computational tools. Natural language summaries are incomplete and imprecise, whereas implementations in software are complex and not portable. The digital scientific notation Leibniz (https://github.com/khinsen/leibniz) aims at reifying computational models as specifications rather than implementations.
###Goal
Working with scientific models requires interactive tools, both for authoring new models and exploring existing ones. The Pharo live object environment is an excellent basis for developing a suitable interactive workbench. Many individual steps can contribute to such a development: implementing well-known examples from various scientific domains (e.g. Newton's equations for celestial mechanics or the Lotka-Volterra equations for population dynamics), extensions to Pharo development tools (inspector, debugger, browser, ...) for handling models formulated in Leibniz, etc.
###Level: Intermediate

***

##Title: Spec Debugging Tools
###Contact: guillermopolito@gmail.com tesonep@gmail.com
###Supervisors: Guillermo Polito, Pablo Tesone
###Keywords: ui debugging
###Context
Spec is a UI framework providing a component model with pluggable backends. This makes sometimes difficult to understand the composition structure and go from the UI to the corresponding code.
###Goal
The goal of this project is to develop several debugging facilities to help understanding Spec UIs. For example, click on a component and go to its code, highlight component boundaries on mouse over.
###Level: Beginner

***

##Title: Spec Cassowary Layout
###Contact: tesonep@gmail.com guillermopolito@gmail.com
###Supervisors: Pablo Tesone, Guillermo Polito
###Keywords: ui algorithm
###Context
Spec is a UI framework providing a component model with pluggable backends. The current layouting options provide boxes, panes and grids.
###Goal
The goal of this project is to develop a cassowary layout for Spec using existing constraint solvers. The student will need to define a DSL to describe constraints and define what are the minimal set of constraints components should have.
###Level: Advanced

***

<img src="http://pharo.org/web/files/pharo-logo-small.png"/><p class="footer">Page last generated on 2019-03-08T20:15:54.747504+00:00 by Pharo5.0 of 16 April 2015 update 50772</p>