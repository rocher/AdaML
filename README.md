# ChangeLog
### Development
Hard work in progress; keep tuned.

<details>
<summary><b>Older Releases</b> &nbsp; &mdash; <i>click to expand</i> &mdash;</summary>

> *no releases yet*

</details>

# Introduction
### What is AdaML?
- UML tailored for Ada 2012 programming language
- A modeling language to draw UML diagrams, implemented in PlantUML
- An easy way to learn Ada through the use of UML and OOP concepts

### Features
- UML tailored to use and show particular Ada language characteristics
- Coherent set of functions to design software components for Ada
- Generates high quality drawings (ps, eps) easy to embedded in other docs
- Easy to learn by example, both AdaML and Ada language

### What is /not/ AdaML?
- A model-based tool to generate Ada code
- A reverse engineering tool to draw UML diagrams from Ada code
- An interactive UML modeling or drawing tool

# Local Usage
AdaML must be used locally to get quality graphics. You can generate diagrams in
`eps` format that can be embedded in LaTeX docs.

### Requirements
- [PlantUML](https://plantuml.com) installed and working in your system
- The AdaML files, check [AdaML](https://github.com/rocher/AdaML) installation
  instructions
- Your favorite text editor, preferably with PlantUML support (e.g. Emacs)
- Check the list of [supported editors](http://plantuml.com/running)
- For better visualization and integration with LaTeX, [computer
  modern](https://www.fontsquirrel.com/fonts/computer-modern) fonts

# Online Usage
### Online Version - Quick Start
- Open [plantuml-previewer](http://sujoyu.github.io/plantuml-previewer)
- Remove default lines and paste the following code:

```
!include https://raw.github.com/rocher/AdaML/develop/AdaML.puml
begin_type("Pan_Dimensional")
  procedure("Ask_The_Question", "in out Natural")
end()

begin_package("Deep_Thought")
  function("Answer_The_Question", "", "Natural")
private()
  variable("The_Answer", "Natural", 42)
end()

depends("Pan_Dimensional", "Deep_Thought", "ask >")
```

### Embed Diagrams in GitHub
This is an example of the AdaML documentation:

<p align="center">
<img src="http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.github.com/rocher/AdaML/develop/diagram/deep-thought.puml">
</p>

- Check the [raw version](https://raw.github.com/rocher/AdaML/develop/README.md)
  of this `README.md` file to see the image link used (plus how to easily center
  images in GitHub)
- The PlantUML source code can be found in GitHub here: [deep-thought.puml](https://raw.github.com/rocher/AdaML/develop/diagram/deep-thought.puml)
