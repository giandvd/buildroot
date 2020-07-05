TINYDNS_VERSION = 1.05
TINYDNS_SITE = https://cr.yp.to/djbdns
TINYDNS_SOURCE = djbdns-$(TINYDNS_VERSION).tar.gz
TINYDNS_LICENSE = EPL-2.0
TINYDNS_LICENSE_FILES = LICENSE

define TINYDNS_BUILD_CMDS
	echo "$(TARGET_CC) $(TARGET_CFLAGS)" >conf-cc
	echo "$(TARGET_LD) $(TARGET_LDFLAGS)" >conf-ld
        $(MAKE) -C $(@D) -j1
endef

define TINYDNS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(BUILD_DIR)/tinydns-$(TINYDNS_VERSION)/dnsroots.global $(TARGET_DIR)/etc
	$(INSTALL) -D -m 755 \
          $(BUILD_DIR)/tinydns-$(TINYDNS_VERSION)/tinydns \
          $(BUILD_DIR)/tinydns-$(TINYDNS_VERSION)/tinydns-conf \
          $(BUILD_DIR)/tinydns-$(TINYDNS_VERSION)/tinydns-get \
          $(BUILD_DIR)/tinydns-$(TINYDNS_VERSION)/tinydns-data \
          $(BUILD_DIR)/tinydns-$(TINYDNS_VERSION)/tinydns-edit \
          $(TARGET_DIR)/usr/bin
endef

define TINYDNS_INSTALL_INIT_SYSTEMD
        $(INSTALL) -D -m 644 package/tinydns/tinydns.service \
                $(TARGET_DIR)/usr/lib/systemd/system/tinydns.service
endef

$(eval $(generic-package))
