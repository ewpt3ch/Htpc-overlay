# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Scripts to make a kernel and create an ebuild for it"
HOMEPAGE="none"
MY_P="${PN}_${PV}-src"
LICENSE=""
SRC_URI="${PN}-${PV}.tar.bz2"
RESTRICT="fetch strip"
IUSE=""
KEYWORDS="~x86"
SLOT="0"

DEPEND=""
RDEPEND=""

pkg_nofetch() {
	einfo "did you run update package?"
}

src_install() {
    cp -r "./" "${D}" || die "install failed"
}
