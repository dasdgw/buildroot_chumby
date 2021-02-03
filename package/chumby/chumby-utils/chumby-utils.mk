CHUMBY_UTILS_VERSION = 1.0
CHUMBY_UTILS_SOURCE = utils-$(CHUMBY_UTILS_VERSION).tgz
CHUMBY_UTILS_SITE = http://files.chumby.com/source/falconwing/build2370

define CHUMBY_UTILS_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) all
endef

define CHUMBY_UTILS_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) INSTALL_DIR=$(TARGET_DIR)/usr/bin install
endef


$(eval $(generic-package))
