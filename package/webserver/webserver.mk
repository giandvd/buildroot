WEBSERVER_VERSION = 1.0
WEBSERVER_SITE = $(TOPDIR)/package/webserver
WEBSERVER_SITE_METHOD = local
WEBSERVER_LICENSE = BSD-3-Clause
WEBSERVER_LICENSE_FILES = LICENSE

define WEBSERVER_INSTALL_INIT_SYSTEMD
        $(INSTALL) -D -m 644 package/webserver/webserver.service \
                $(TARGET_DIR)/usr/lib/systemd/system/webserver.service
endef

$(eval $(golang-package))
