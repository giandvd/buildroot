PERL_HTTP_TINY_UA_VERSION = 0.006
PERL_HTTP_TINY_UA_SOURCE = HTTP-Tiny-UA-$(PERL_HTTP_TINY_UA_VERSION).tar.gz
PERL_HTTP_TINY_UA_SITE = $(BR2_CPAN_MIRROR)/authors/id/D/DA/DAGOLDEN
PERL_HTTP_TINY_UA_LICENSE = BSD-4-Clause-like
PERL_HTTP_TINY_UA_LICENSE_FILES = COPYRIGHT
PERL_HTTP_TINY_UA_DISTNAME = HTTP-Tiny-UA
PERL_HTTP_TINY_UA_DEPENDENCIES = perl-http-tiny perl-class-tiny
PERL_HTTP_TINY_UA_CONF_ENV = PATH=$(BR_PATH):$(HOST_DIR)/bin

$(eval $(perl-package))
