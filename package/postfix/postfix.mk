POSTFIX_VERSION = 3.5.3
POSTFIX_SITE = http://cdn.postfix.johnriley.me/mirrors/postfix-release/official
POSTFIX_LICENSE = EPL-2.0, IPL-1.0
POSTFIX_LICENSE_FILES = COPYING
POSTFIX_DEPENDENCIES = host-m4 openssl berkeleydb

define POSTFIX_BUILD_CMDS
	$(MAKE) -C $(@D) CC=$(TARGET_CC) CCARGS="-DNO_NIS -DUSE_TLS -DUSE_SASL_AUTH -DDEF_SASL_SERVER=dovecot" AUXLIBS="-lssl -lcrypto" makefiles && make -C $(@D)
endef

define POSTFIX_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) \
                non-interactive-package \
		install_root="$(TARGET_DIR)" \
		readme_directory=/usr/share/doc/postfix/readme \
		manpage_directory=/usr/share/man \
		shlib_directory=/usr/lib/postfix
endef

define POSTFIX_USERS
        postfix -1 postfix -1 * /var/spool/postfix -
        - -1 postdrop -1 * 
endef

define POSTFIX_INSTALL_INIT_SYSTEMD
        $(INSTALL) -D -m 644 package/postfix/postfix@.service \
                $(TARGET_DIR)/usr/lib/systemd/system/postfix@.service
        $(INSTALL) -D -m 744 package/postfix/configure-instance.sh \
                $(TARGET_DIR)/usr/libexec/postfix/configure-instance.sh
endef

$(eval $(generic-package))
