#Pharo GSOC Topics

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
* [Liberated Pixel Cup native support in Pharo](#title-liberated-pixel-cup-native-support-in-pharo)
* [Charting library](#title-charting-library)
* [NLP Library](#title-nlp-library)

##Title: Better and more refactorings for Pharo
###Contact: christophe.demarey@inria.fr
###Supervisors: Anyone
###Keywords: Refactoring IDE
###Context
Smalltalk was the first environment to have such great refactorings that inspired a lot of languages and book authors. Unfortunately, refactoring support lowered in quality and some of them are now missing in Pharo.
###Goal
The goal of this project is to provide Pharo developers a good refactoring support, comparable to modern IDEs like IDEA Intellij. See https://github.com/pharo-project/pharo-project-proposals/blob/master/refactoring.md for a detailed list of tasks.
###Level: Beginner

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

##Title: IPFS for Pharo
###Contact: marcus.denker@inria.fr
###Supervisors: Marcus Denker
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
###Contact: olk.zaytsev@gmail.com
###Supervisors: Oleksandr Zaytsev and Serge Stinckwich
###Keywords: Data Science, Data Analysis, DataFrame, Tabular Data, Statistics
###Context
DataFrame was introduced to Pharo during the GSoC 2017 (https://github.com/PolyMathOrg/DataFrame). The work on DataFrame continued and many new features were introduced by different contributors. However, it is still a work in progress and a huge portion of functionality that can be found in other data frame packages (e.g. R, pandas) is missing.
###Goal
The goal of this project is to introduce new functionality to DataFrame (for example, handling missing values) and write examples of applying DataFrame to real problems of Data Science (one can reproduce examples from pandas and scikit-learn documentation, as well as some examples from R-bloggers)
###Level: Beginner or Intermediate

***

##Title: Liberated Pixel Cup native support in Pharo
###Contact: stephane.ducasse@inria.fr
###Supervisors: Stephane Ducasse
###Keywords: Cairo SDL 2D
###Context
It is now possible to build quite good 2D native applications in Pharo using Cairo and SDL, which led to experimental video games (article in Linux Mag of April 2018, https://github.com/clementbera/wizard-battle-arena). On the other hand, projects such as The Liberated Pixel Cup supported by the Mozzila Foundation and other large groups develop huge graphic ressources available under open source licenses (http://lpc.opengameart.org/). Note the student is strongly advised to use a Linux machine for this work.
###Goal
The first goal is to create a library to easily import and display LPC characters generated from website like this one (http://gaurav.munjal.us/Universal-LPC-Spritesheet-Character-Generator/) into the Pharo stack (SDL, Cairo & Pharo). Second goal is to build a minimal video game framework on top of it with a game. Lastly, the third goal is to improve packaging & deployment of such native applications in Pharo, as well as evaluating the integration with other frameworks (Bloc to display GUI for example). The third goal has to be clearly detailled in the student proposal - we will not accept topics not improving the Core Pharo system. In addition, the demo game created should be submitted to this year LPC event (competition from June 1st to July 31st) to show Pharo to other communities.
###Level: Beginner to Intermediate

***

##Title: Charting library
###Contact: cyril@ferlicot.me and julien.delplanque@inria.fr and olk.zaytsev@gmail.com
###Supervisors: Cyril Ferlicot-Delbecque and Julien Delplanque and Oleksandr Zaytsev
###Keywords: Data Visualization, Data Science, Plotting, Grammar of Graphics
###Context
In recent years community has been showing great interest in doing scientific computing or data analysis, as well as building machine learning applications in Pharo. Data is central in all those fields. Visualizing data in charts is very important for understanding it and presenting the results. Even though Roassal can be used for plotting data, it has a very generic API and makes even the most simple charts very complicated. Other tools like MatplotLibBridge or ChartJS are just connectors to external libraries which create static images and do not allow us to use some of the most valuable features of Pharo environment, such as live inspection and debugging.
###Goal
Build an easy-to-use framework for visualizing data with charts, similar to matplotlib in Python or ggplot2 in R. This tool should have the flexible API based on the Grammar of Graphics. It can be built on top of Pharo's Geometry library and should be able to use different backends such as Morphic or Bloc interchangeably.
###Level: Intermediate or Advanced

***

##Title: NLP Library
###Contact: olk.zaytsev@gmail.com
###Supervisors: Oleksandr Zaytsev
###Keywords: Natural Language Processing, Statistics, Data Science
###Context
Ongoing research that is being done around analysing messages from Discord and letters from mailing lists, exploring commit messages, and performing static analysis of source code is based on simple but irreplaceable algorithms of natural language processing that tokenize text into words, perform stemming and lemmatization of words, count occurrences of words in text etc.
###Goal
We need a natural language processing (NLP) library entirely written in Pharo with functionality similar to NLTK or Spacy: part of speech (PoS) tagging, named entity recognition (NER), lemmatization, stemming, word sense disambiguation, tf-idf, n-grams, various metrics etc.
###Level: Intermediate or Advanced

***

<img src="http://pharo.org/web/files/pharo-logo-small.png"/><p class="footer">Page last generated on 2019-02-04T03:22:40.499785+00:00 by Pharo5.0 of 16 April 2015 update 50772</p>