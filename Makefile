RPMCONFIGDIR ?= /usr/lib/rpm
FILEATTRSDIR ?= /usr/lib/rpm/fileattrs
.PHONY: install
install: ros.attr ros.req ros.prov
	install -D -p -m 0644 ros.attr $(DESTDIR)$(FILEATTRSDIR)/ros.attr
	install -D -p -t $(DESTDIR)$(RPMCONFIGDIR) ros.req ros.prov
