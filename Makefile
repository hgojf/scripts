.PHONY: all install

PREFIX ?= /usr/local
SCRIPTS = bookmark impermanence pass rfc

all: #so that 'make' doesnt try to install anything

install:
	@for script in ${SCRIPTS} ; do \
		echo $(INSTALL) -m 0755 $${script} ${PREFIX}/bin/ ; \
		$(INSTALL) -m 0755 $${script} ${PREFIX}/bin || exit 1 ; \
	done
