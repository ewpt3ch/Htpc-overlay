# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Portage configuration for htpc's"
HOMEPAGE="none"
LICENSE=""
SRC_URI="http://storm.ewpt3ch.com/distfiles/${PN}-${PVR}.tar.bz2"
RESTRICT="nomirror strip"
IUSE=""
KEYWORDS="~x86"
SLOT="0"

DEPEND=""
RDEPEND=""

pkg_nofetch() {
	einfo "Please run build-kernel to"
	einfo "create a prebuilt kernel"
}

src_install() {
	cp -r "./" "${D}/" || die "Install failed!"
}
