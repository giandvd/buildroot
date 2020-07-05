OPENDKIM_VERSION = 2.10.3
OPENDKIM_SITE = http://downloads.sourceforge.net/project/opendkim
OPENDKIM_LICENSE = EPL-2.0
OPENDKIM_LICENSE_FILES = LICENSE
OPENDKIM_DEPENDENCIES = libbsd libmilter
OPENDKIM_AUTORECONF = YES
OPENDKIM_CONF_OPTS += --disable-shared --with-milter=$(STAGING_DIR)/usr

define OPENDKIM_USERS
        opendkim -1 opendkim -1 * /run/opendkim -
endef

define OPENDKIM_INSTALL_INIT_SYSTEMD
        $(INSTALL) -D -m 644 package/opendkim/opendkim.service \
                $(TARGET_DIR)/usr/lib/systemd/system/opendkim.service
endef

$(eval $(autotools-package))
