#############################################################
#
# Quake 1 (SDL Port)
#
#############################################################

SDLQUAKE_VERSION = 1.0.9
SDLQUAKE_SITE = http://www.libsdl.org/projects/quake/src
SDLQUAKE_AUTORECONF = YES

SDLQUAKE_CONF_OPTS = --with-sdl-prefix=$(STAGING_DIR)/usr

SDLQUAKE_DEPENDENCIES = sdl

define SDLQUAKE_AUTOCONF_FIXES
	(cd $(@D); touch INSTALL NEWS README AUTHORS ChangeLog; \
		echo "AC_PROG_CC" >> configure.in;)
endef

SDLQUAKE_POST_PATCH_HOOKS += SDLQUAKE_AUTOCONF_FIXES

$(eval $(autotools-package))
