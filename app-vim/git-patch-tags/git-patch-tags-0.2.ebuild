# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-vim/git-patch-tags/git-patch-tags-0.2.ebuild,v 1.1 2015/03/21 07:22:27 radhermit Exp $

EAPI=5

inherit vim-plugin

DESCRIPTION="vim plugin: add git patch tags as used in linux kernel development"
HOMEPAGE="http://www.vim.org/scripts/script.php?script_id=3632"
LICENSE="GPL-2+"
KEYWORDS="~amd64 ~x86"

VIM_PLUGIN_HELPFILES="${PN}.txt"
