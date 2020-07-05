################################################################################
#
# perl-x-tiny
#
################################################################################

PERL_X_TINY_VERSION = 0.21
PERL_X_TINY_SOURCE = X-Tiny-$(PERL_X_TINY_VERSION).tar.gz
PERL_X_TINY_SITE = $(BR2_CPAN_MIRROR)/authors/id/F/FE/FELIPE
PERL_X_TINY_DEPENDENCIES = perl-module-runtime
PERL_X_TINY_LICENSE = Artistic or GPL-1.0+
PERL_X_TINY_LICENSE_FILES = README
PERL_X_TINY_DISTNAME = X-Tiny

$(eval $(perl-package))
