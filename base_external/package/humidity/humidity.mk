
##############################################################
#
# HUMIDITY_SENSOR
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
HUMIDITY_VERSION = d397c3796edc88876f736d6ab393e993ec6afb4e
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
HUMIDITY_SITE = git@github.com:cu-ecen-aeld/darshitagrawal_hwsingh27_shared.git
HUMIDITY_SITE_METHOD = git
HUMIDITY_GIT_SUBMODULES = YES

define HUMIDITY_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/humidity all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define HUMIDITY_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/humidity/humiditytest $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
