RPMDIR=/usr/lib/rpm
.PHONY: install
install: ros.attr ros.req ros.prov
	install -D -p -m 0644 ros.attr $(DESTDIR)$(RPMDIR)/fileattrs/ros.attr
	install -D -p -t $(DESTDIR)$(RPMDIR) ros.req ros.prov
