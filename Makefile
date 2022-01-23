PHONY = install uninstall test

ifeq ($(PREFIX), )
	PREFIX = /usr
endif

all:

clean:

test:

install:
	mkdir -p $(DESTDIR)/$(PREFIX)/share/toolbox/include
	chown -R root.root include
	find include -type d -exec chmod 755 {} \;
	find include -type f -exec chmod 644 {} \;
	cp -a include/* $(DESTDIR)/$(PREFIX)/share/toolbox/include/.

uninstall:
	rm -f $(DESTDIR)/$(PREFIX)/share/toolbox/include/acpi/ac.sh
	rm -f $(DESTDIR)/$(PREFIX)/share/toolbox/include/acpi/battery.sh
	rm -f $(DESTDIR)/$(PREFIX)/share/toolbox/include/net/iface.sh
	rmdir $(DESTDIR)/$(PREFIX)/share/toolbox/include/acpi
	rmdir $(DESTDIR)/$(PREFIX)/share/toolbox/include/net

.PHONY: $(PHONY)
