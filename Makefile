MAIN=tcc

all: pdf

pdf:
	latexmk $(MAIN) -pdf -pv

watch:
	latexmk $(MAIN) -pdf -pvc

diff:
	./git-latexdiff $(OLD) $(NEW) --main $(MAIN).tex --latexmk --cleanup all --type FONTSTRIKE

clean:
	latexmk -c
	rm textual/*.aux postextual/*.aux pretextual/*.aux
	rm $(MAIN).bbl $(MAIN).brf $(MAIN).nlo $(MAIN).nls
