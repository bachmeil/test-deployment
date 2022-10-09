files := $(patsubst %.md,%,$(wildcard *.md))

build:
	for f in $(files); do \
		echo '<!DOCTYPE html><script src="https://cdn.jsdelivr.net/npm/texme@1.1.0"></script><textarea>' > $$f.html\
		cat $$f.md >> $$f.html\
	done
	rm -f build
	mkdir build
	mv *.html build/
