# ChangeLog
## alpha version
Work in progress version. Keep tuned.

# Introduction
## What is AdaML?
- UML tailored for Ada 2012 programming language
- A modeling language to draw UML diagrams, implemented in PlantUML
- An easy way to learn Ada through the use of UML and OOP concepts

## Features
- UML tailored to use and show particular Ada language characteristics
- Coherent set of functions to design software components for Ada
- Generates high quality drawings (ps, eps) easy to embedded in other docs
- Easy to learn by example, both AdaML and Ada language

## What is /not/ AdaML?
- A model-based tool to generate Ada code
- A reverse engineering tool to draw UML diagrams from Ada code
- An interactive UML modeling or drawing tool

## Requirements
- [PlantUML](https://plantuml.com) installed and working in your system
- The AdaML files, check [AdaML](https://github.com/rocher/AdaML) installation
  instructions
- Your favorite text editor, preferably with PlantUML support (e.g. Emacs)
- Check the list of [supported editors](http://plantuml.com/running)
- For better visualization and integration with LaTeX, [computer
  modern](https://www.fontsquirrel.com/fonts/computer-modern) fonts

## Limitations
Make sure that the PlantUML environment you're using

- lets you use external files, not only a single piece of text
- the line ="!include AdaML.puml"= on top of your new files effectively includes
  the AdaML.puml file
- Still under development; feedback appreciated

# Online Usage
## Embedded Diagrams
First test from `README.org` file

![test](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.github.com/rocher/AdaML/develop/diagram/deep-thought.puml)
