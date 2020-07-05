OPENDMARC_VERSION = 1.3.2
OPENDMARC_SITE = https://github.com/trusteddomainproject/OpenDMARC/archive
OPENDMARC_SOURCE = rel-opendmarc-1-3-2.tar.gz
OPENDMARC_LICENSE = EPL-2.0
OPENDMARC_LICENSE_FILES = LICENSE
OPENDMARC_DEPENDENCIES = libspf2 libmilter
OPENDMARC_CONF_OPTS += \
  --with-milter=$(STAGING_DIR)/usr \
  --with-spf \
  --with-spf2-lib=$(STAGING_DIR)/usr/lib \
  --with-spf2-include=$(STAGING_DIR)/usr/include/spf2
OPENDMARC_AUTORECONF = YES

define OPENDMARC_INSTALL_INIT_SYSTEMD
        $(INSTALL) -D -m 644 package/opendmarc/opendmarc.service \
                $(TARGET_DIR)/usr/lib/systemd/system/opendmarc.service
endef

$(eval $(autotools-package))
