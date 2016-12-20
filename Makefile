IDRIS := idris
PKG   := music

build:
	$(IDRIS) --build ${PKG}.ipkg

install:
	$(IDRIS) --install ${PKG}.ipkg

clean:
	$(IDRIS) --clean ${PKG}.ipkg

clobber:
	find . -name '*.ibc' -delete

rebuild: clean build

doc:
	${IDRIS} --mkdoc ${PKG}.ipkg

doc_clean:
	rm -rf ${PKG}_doc

linecount:
	find . -name '*.idr' | xargs wc -l

.PHONY: build install clean rebuild linecount
