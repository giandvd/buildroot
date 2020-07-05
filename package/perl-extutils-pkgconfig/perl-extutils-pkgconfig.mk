################################################################################
#
# perl-extutils-pkgconfig
#
################################################################################

PERL_EXTUTILS_PKGCONFIG_VERSION = 1.16
PERL_EXTUTILS_PKGCONFIG_SOURCE = ExtUtils-PkgConfig-$(PERL_EXTUTILS_PKGCONFIG_VERSION).tar.gz
PERL_EXTUTILS_PKGCONFIG_SITE = $(BR2_CPAN_MIRROR)/authors/id/X/XA/XAOC
PERL_EXTUTILS_PKGCONFIG_LICENSE = Artistic or GPL-1.0+
PERL_EXTUTILS_PKGCONFIG_LICENSE_FILES = LICENSE
PERL_EXTUTILS_PKGCONFIG_DISTNAME = ExtUtils-PkgConfig
HOST_PERL_EXTUTILS_PKGCONFIG_CONF_ENV = PATH=$(BR_PATH):$(HOST_DIR)/bin

$(eval $(host-perl-package))
