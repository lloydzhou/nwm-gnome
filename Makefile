#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_NWM_GNOME = $(PREFIX)/bin/nwm-gnome
PATH_NWM_GNOME_DESKTOP = $(PREFIX)/share/applications/nwm-gnome.desktop
PATH_NWM_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/nwm-gnome.session
PATH_NWM_GNOME_XSESSION = $(PREFIX)/share/xsessions/nwm-gnome.desktop
PATH_GNOME_SESSION_NWM = $(PREFIX)/bin/gnome-session-nwm

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/nwm-gnome-xsession.desktop $(PATH_NWM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/nwm-gnome.desktop $(PATH_NWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/nwm-gnome.session $(PATH_NWM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/nwm-gnome $(PATH_NWM_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-nwm $(PATH_GNOME_SESSION_NWM)



uninstall:
	rm -f $(PATH_NWM_GNOME)
	rm -f $(PATH_NWM_GNOME_DESKTOP)
	rm -f $(PATH_NWM_GNOME_SESSION)
	rm -f $(PATH_NWM_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_NWM)



.PHONY: all install uninstall
