include pandoc-man.mk

ifeq ($(PREFIX),)
    PREFIX := /usr/local
endif

datarootdir := $(PREFIX)/share
datadir := $(datarootdir)
mandir := $(datarootdir)/man
bindir :=  $(PREFIX)/bin

all: deb-get.1

clean:
	rm *.1

install_docs: all
	install -d $(DESTDIR)$(mandir)/man1
	install -m 644 deb-get.1 $(DESTDIR)$(mandir)/man1


install_bins:
	install -d $(DESTDIR)$(bindir)
	install -m 755 ../deb-get $(DESTDIR)$(bindir)

install: install_bins  install_docs

uninstall::
	rm -f $(DESTDIR)$(mandir)/man1/deb-get.1
	rm -f $(DESTDIR)$(bindir)/deb-get


.PHONY: all
