# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/json-glib/json-glib-1.0.2-r1.ebuild,v 1.6 2015/03/29 10:32:48 jer Exp $

EAPI="5"
GCONF_DEBUG="no"

inherit gnome2 multilib-minimal

DESCRIPTION="A library providing GLib serialization and deserialization support for the JSON format"
HOMEPAGE="https://wiki.gnome.org/Projects/JsonGlib"

LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm hppa ~ia64 ~mips ppc ppc64 ~s390 ~sparc x86 ~amd64-fbsd ~x86-fbsd"
IUSE="debug +introspection"

RDEPEND="
	>=dev-libs/glib-2.37.6:2[${MULTILIB_USEDEP}]
	introspection? ( >=dev-libs/gobject-introspection-0.9.5 )
"
DEPEND="${RDEPEND}
	~app-text/docbook-xml-dtd-4.1.2
	app-text/docbook-xsl-stylesheets
	dev-libs/libxslt
	>=dev-util/gtk-doc-am-1.20
	>=sys-devel/gettext-0.18
	virtual/pkgconfig[${MULTILIB_USEDEP}]
"

src_prepare() {
	# Do not touch CFLAGS
	sed -e 's/CFLAGS -g/CFLAGS/' -i "${S}"/configure || die
}

multilib_src_configure() {
	# Coverage support is useless, and causes runtime problems
	ECONF_SOURCE=${S} \
	gnome2_src_configure \
		--enable-man \
		--disable-gcov \
		$(usex debug --enable-debug=yes --enable-debug=minimum) \
		$(multilib_native_use_enable introspection)

	if multilib_is_native_abi; then
		ln -s "${S}"/doc/reference/html doc/reference/html || die
	fi
}

multilib_src_compile() { gnome2_src_compile; }
multilib_src_install() { gnome2_src_install; }
