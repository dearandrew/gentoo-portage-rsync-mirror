# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-tcltk/tcl-gtk/tcl-gtk-0.08.ebuild,v 1.7 2015/03/20 10:37:05 jlec Exp $

EAPI=5

DESCRIPTION="GTK bindings for TCL"
HOMEPAGE="http://tcl-gtk.sf.net/"
SRC_URI="mirror://sourceforge/tcl-gtk/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"
IUSE=""

DEPEND="
	>=dev-lang/tcl-8.4:0
	dev-libs/glib:2
	x11-libs/gtk+:2
	>=x11-libs/vte-0.11.11:0"
RDEPEND="${DEPEND}"
