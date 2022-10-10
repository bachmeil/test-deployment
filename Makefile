files := $(patsubst %.md,%,$(wildcard *.md))

build:
	for f in $(files); do \
		cat page-top.html > $$f.html;\
		cat $$f.md >> $$f.html;\
		cat page-bottom.html >> $$f.html;\
	done
	rm -f build
	mkdir build
	mv *.html build/
