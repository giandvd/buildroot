PERL_CRYPT_FORMAT_VERSION = 0.10
PERL_CRYPT_FORMAT_SOURCE = Crypt-Format-$(PERL_CRYPT_FORMAT_VERSION).tar.gz
PERL_CRYPT_FORMAT_SITE = $(BR2_CPAN_MIRROR)/authors/id/F/FE/FELIPE
PERL_CRYPT_FORMAT_LICENSE = BSD-4-Clause-like
PERL_CRYPT_FORMAT_LICENSE_FILES = COPYRIGHT
PERL_CRYPT_FORMAT_DISTNAME = Crypt-Format
PERL_CRYPT_FORMAT_CONF_ENV = PATH=$(BR_PATH):$(HOST_DIR)/bin

$(eval $(perl-package))
