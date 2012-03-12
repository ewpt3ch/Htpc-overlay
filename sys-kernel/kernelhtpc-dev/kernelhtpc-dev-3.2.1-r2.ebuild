# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Pre-compiled kernel and modules"
HOMEPAGE="none"
LICENSE=""
SRC_URI="${PN}-${PVR}.tar.bz2"
RESTRICT="fetch strip"
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

pkg_config() {
	depmod 3.2.1-gentoo-r2htpc-dev
}
