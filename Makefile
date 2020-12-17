.PHONY: all
all: dist clean

main.html: clean
	asciidoctor main.adoc

.PHONY: dist
dist: main.html
	mkdir dist
	cp main.html dist/index.html

.PHONY: clean
clean:
	rm -rf dist main.html