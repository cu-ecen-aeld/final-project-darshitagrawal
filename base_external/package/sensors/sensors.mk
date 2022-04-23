
##############################################################
#
# SENSORS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
SENSORS_VERSION = 925fc48fcf537c4623270191dff2ffe9eaab3f0d
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SENSORS_SITE = git@github.com:cu-ecen-aeld/darshitagrawal_hwsingh27_shared.git
SENSORS_SITE_METHOD = git
SENSORS_GIT_SUBMODULES = YES

define SENSORS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/sensor_combined all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SENSORS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/sensor_combined/sensor_combined $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
