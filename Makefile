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
		echo "Installing Pokemon Wallpapers"; \
		mkdir -pm755 /usr/share/backgrounds/pokemon/; \
		for i in pokemon/* ; \
		do \
				echo "installing $$i"; \
				install -Dm755 "$$i" "/usr/share/backgrounds/$$i"; \
		done; \
		echo "Pokemon Wallpapers have been installed succefully"; \
	else \
		echo "Cannot install Pokemon Wallpapers: Permission denied"; \
	fi

uninstall:

	if [ '$(WHOAMI)' = 'root' ] ; then \
		echo "Uninstalling Pokemon Wallpapers"; \
		rm -rf /usr/share/backgrounds/pokemon/; \
		echo "Pokemon Wallpapers have been uninstalled succefully"; \
	else \
		echo "Cannot uninstall Pokemon Wallpapers: Permission denied"; \
	fi
