################################################################################
#
# perl-class-tiny
#
################################################################################

PERL_CLASS_TINY_VERSION = 1.006
PERL_CLASS_TINY_SOURCE = Class-Tiny-$(PERL_CLASS_TINY_VERSION).tar.gz
PERL_CLASS_TINY_SITE = $(BR2_CPAN_MIRROR)/authors/id/D/DA/DAGOLDEN
PERL_CLASS_TINY_LICENSE = MIT
PERL_CLASS_TINY_LICENSE_FILES = LICENCE
PERL_CLASS_TINY_DISTNAME = Class-Tiny

$(eval $(perl-package))
