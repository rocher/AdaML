PLANTUML_JAR_PATH = "/usr/local/bin/plantuml.jar"
ORG_FILES = $(shell ls *org)
FIGURES = $(shell sed -e '/begin_src.*plantuml/!D' -e '/begin_src.*plantuml/s/^.*:file //' *.org)
FIGURE_DIRS = $(shell sed -e '/begin_src.*plantuml/!D' -e '/begin_src.*plantuml/s/^.*:file //' *.org | xargs -I{} dirname "{}" | uniq)

all: all-figures AdaML.pdf

AdaML.pdf: *.org *.sty
	@EMACSLOADPATH="$$PWD:" emacs --batch $< -l make-AdaML.el

all-figures: $(FIGURE_DIRS:%=figures-%)

figures-%: %.org
	@test -d $* || mkdir $*; \
	EMACSLOADPATH="$$PWD:" PLANTUML_JAR_PATH="$(PLANTUML_JAR_PATH)" emacs --batch $< -l make-figures

clean:
	$(RM) -rf _minted-AdaML auto $(FIGURE_DIRS)
