# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-djbdns/selinux-djbdns-9999.ebuild,v 1.6 2015/03/22 13:47:28 swift Exp $
EAPI="5"

IUSE=""
MODS="djbdns"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for djbdns"

if [[ $PV == 9999* ]] ; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~x86"
fi
DEPEND="${DEPEND}
	sec-policy/selinux-daemontools
	sec-policy/selinux-ucspitcp
"
RDEPEND="${RDEPEND}
	sec-policy/selinux-daemontools
	sec-policy/selinux-ucspitcp
"
