INSTALL ?= /usr/gnu/bin/install

all: install 

install: 
	$(INSTALL) -d $(DESTDIR)/usr/share/man/man8
	$(INSTALL) -d $(DESTDIR)/lib/svc/manifest/system
	$(INSTALL) -d $(DESTDIR)/lib/svc/method
	$(INSTALL) -m 444 svc-cacert.8 $(DESTDIR)/usr/share/man/man8
	$(INSTALL) -m 444 smf-cacert.xml $(DESTDIR)/lib/svc/manifest/system
	$(INSTALL) -m 555 svc-cacert $(DESTDIR)/lib/svc/method/svc-cacert

clean:
	rm -rf $(DESTDIR)
