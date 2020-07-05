################################################################################
#
# perl-extutils-cchecker
#
################################################################################

PERL_EXTUTILS_CCHECKER_VERSION = 0.10
PERL_EXTUTILS_CCHECKER_SOURCE = ExtUtils-CChecker-$(PERL_EXTUTILS_CCHECKER_VERSION).tar.gz
PERL_EXTUTILS_CCHECKER_SITE = $(BR2_CPAN_MIRROR)/authors/id/P/PE/PEVANS
PERL_EXTUTILS_CCHECKER_LICENSE = Artistic or GPL-1.0+
PERL_EXTUTILS_CCHECKER_LICENSE_FILES = LICENSE
PERL_EXTUTILS_CCHECKER_DISTNAME = ExtUtils-CChecker

$(eval $(host-perl-package))
