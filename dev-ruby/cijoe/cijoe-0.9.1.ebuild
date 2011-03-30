# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/ruby-net-ldap/ruby-net-ldap-0.0.4-r1.ebuild,v 1.2 2010/06/30 18:47:03 graaff Exp $

EAPI="2"
USE_RUBY="ruby18 ree18 jruby ruby19"

RUBY_FAKEGEM_TASK_TEST="test:units"
RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="CI Joe is a fun Continuous Integration server."
HOMEPAGE="https://github.com/defunkt/cijoe"
LICENSE="GPL-2"

KEYWORDS="amd64 x86"
SLOT="0"
IUSE="test"

RDEPEND="dev-ruby/sinatra
         dev-ruby/choice"

ruby_add_bdepend "test? ( virtual/ruby-test-unit )"
ruby_add_bdepend "test? ( dev-ruby/rack-test )"
