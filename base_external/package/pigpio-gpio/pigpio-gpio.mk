
##############################################################
#
# PIGPIO-GPIO
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
PIGPIO_GPIO_VERSION = 9e265060445d05272c104b8d1642ddbae526766b
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
PIGPIO_GPIO_SITE = git@github.com:cu-ecen-aeld/darshitagrawal_hwsingh27_shared.git
PIGPIO_GPIO_SITE_METHOD = git
PIGPIO_GPIO_GIT_SUBMODULES = YES

define PIGPIO_GPIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/gpio all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define PIGPIO_GPIO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/gpio/gpiotest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/gpio/gpioreadtest $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/gpio/gpiowritetest $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
