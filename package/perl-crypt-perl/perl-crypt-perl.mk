PERL_CRYPT_PERL_VERSION = 0.32
PERL_CRYPT_PERL_SOURCE = Crypt-Perl-$(PERL_CRYPT_PERL_VERSION).tar.gz
PERL_CRYPT_PERL_SITE = $(BR2_CPAN_MIRROR)/authors/id/F/FE/FELIPE
PERL_CRYPT_PERL_LICENSE = BSD-4-Clause-like
PERL_CRYPT_PERL_LICENSE_FILES = COPYRIGHT
PERL_CRYPT_PERL_DISTNAME = Crypt-Perl
PERL_CRYPT_PERL_CONF_ENV = PATH=$(BR_PATH):$(HOST_DIR)/bin
PERL_CRYPT_PERL_DEPENDENCIES = perl-convert-asn1

$(eval $(perl-package))
