# 
# For lazy guys, really...
#

CFLAGS= -Wall

.PHONY: doc

all: cats

cats: src/cats.c
	gcc $(CFLAGS) src/cats.c -o cats

doc:
	doxygen doc/Doxyfile

clean:
	rm -f cats
	rm -rf doc/{latex,html}

install: cats
	install cats $(DESTDIR)/bin/cats


