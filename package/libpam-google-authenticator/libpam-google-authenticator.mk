################################################################################
#
# libpam-nfc
#
################################################################################

LIBPAM_GOOGLE_AUTHENTICATOR_VERSION = 1.09
LIBPAM_GOOGLE_AUTHENTICATOR_SITE = https://github.com/google/google-authenticator-libpam/archive
LIBPAM_GOOGLE_AUTHENTICATOR_SOURCE = $(LIBPAM_GOOGLE_AUTHENTICATOR_VERSION).tar.gz
LIBPAM_GOOGLE_AUTHENTICATOR_LICENSE = GPL-2.0
LIBPAM_GOOGLE_AUTHENTICATOR_LICENSE_FILES = COPYING
LIBPAM_GOOGLE_AUTHENTICATOR_DEPENDENCIES = linux-pam
LIBPAM_GOOGLE_AUTHENTICATOR_AUTORECONF = YES
LIBPAM_GOOGLE_AUTHENTICATOR_INSTALL_STAGING = YES

LIBPAM_GOOGLE_AUTHENTICATOR_CONF_OPTS = \
	--with-pam-dir=/lib/security

$(eval $(autotools-package))
