ifndef VERBOSE
.SILENT:
endif

WHOAMI = $(shell whoami)

all:

	@echo Pokemon Wallpapers
	@echo ------------------------------
	@echo To install run $$ sudo make install
	@echo
	@echo To unistall run $$ sudo make unistall

install:
	
	if [ '$(WHOAMI)' = 'root' ] ; then \
		echo "About to install Pokemon Wallpapers"; \
		cp -r pokemon/ /usr/share/backgrounds/; \
		echo "Pokemon Wallpapers has been installed succefully"; \
	else \
		echo "cannot install Pokemon Wallpapers: Permission denied"; \
	fi

unistall:

	if [ '$(WHOAMI)' = 'root' ] ; then \
		echo "About to uninstall Pokemon Wallpapers"; \
		rm -rf /usr/share/backgrounds/pokemon/; \
		echo "Pokemon Wallpapers has been uninstalled succefully"; \
	else \
		echo "cannot uninstall Pokemon Wallpapers: Permission denied"; \
	fi
