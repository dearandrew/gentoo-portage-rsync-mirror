# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-frameworks/kcompletion/kcompletion-5.7.0.ebuild,v 1.1 2015/02/14 22:09:55 johu Exp $

EAPI=5

VIRTUALX_REQUIRED="test"
inherit kde5

DESCRIPTION="Framework for common completion tasks such as filename or URL completion"
KEYWORDS=" ~amd64 ~x86"
IUSE="nls"

RDEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kwidgetsaddons)
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	nls? ( dev-qt/linguist-tools:5 )
"
