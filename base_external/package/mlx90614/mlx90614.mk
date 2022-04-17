
##############################################################
#
# MLX90614
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
MLX90614_VERSION = b13c840bd5c7dac7cf66ed2cfc0dde6580bf6ad5
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
MLX90614_SITE = git@github.com:cu-ecen-aeld/darshitagrawal_hwsingh27_shared.git
MLX90614_SITE_METHOD = git
MLX90614_GIT_SUBMODULES = YES

define MLX90614_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/mlx90614 all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define MLX90614_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/mlx90614/mlx90614test $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
