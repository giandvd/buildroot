PERL_NET_ACME2_VERSION = 0.35
PERL_NET_ACME2_SOURCE = Net-ACME2-$(PERL_NET_ACME2_VERSION).tar.gz
PERL_NET_ACME2_SITE = $(BR2_CPAN_MIRROR)/authors/id/F/FE/FELIPE
PERL_NET_ACME2_LICENSE = BSD-4-Clause-like
PERL_NET_ACME2_LICENSE_FILES = COPYRIGHT
PERL_NET_ACME2_DISTNAME = Net-ACME2
PERL_NET_ACME2_DEPENDENCIES = perl-call-context perl-crypt-format perl-crypt-perl perl-http-tiny-ua \
  perl-io-socket-ssl perl-json perl-module-runtime perl-x-tiny
PERL_NET_ACME2_CONF_ENV = PATH=$(BR_PATH):$(HOST_DIR)/bin

$(eval $(perl-package))
