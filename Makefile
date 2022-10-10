files := $(patsubst %.md,%,$(wildcard *.md))

build:
	for f in $(files); do \
		cat page-top.html > $$f.html;\
		cat $$f.md >> $$f.html;\
		cat page-bottom.html >> $$f.html;\
	done
	cat page-top.html > index.html
	cat index.md >> index.html
	cat index-bottom.html >> index.html
	rm -f build
	mkdir build
	mv *.html build/

build2:
	bash buildscript