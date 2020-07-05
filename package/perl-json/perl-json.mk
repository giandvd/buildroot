################################################################################
#
# perl-json
#
################################################################################

PERL_JSON_VERSION = 4.02
PERL_JSON_SOURCE = JSON-$(PERL_JSON_VERSION).tar.gz
PERL_JSON_SITE = $(BR2_CPAN_MIRROR)/authors/id/I/IS/ISHIGAKI
PERL_JSON_LICENSE = MIT
PERL_JSON_LICENSE_FILES = LICENCE
PERL_JSON_DISTNAME = JSON

$(eval $(perl-package))
