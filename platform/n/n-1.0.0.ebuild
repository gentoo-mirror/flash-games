# Copyright 2024 Vitaly Zdanevich
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Classic, famous. Run and jump to open the door"
HOMEPAGE="https://www.thewayoftheninja.org/n.html"
SRC_URI="https://www.thewayoftheninja.org/Nv2-Linux.tar"

S="${WORKDIR}"

LICENSE="N-2.0"
SLOT="0"

RDEPEND="
	app-emulation/ruffle
"

RESTRICT="strip"

QA_PREBUILT="*"

src_install() {
	insinto /opt/
	doins Nv2-Linux.swf

	domenu "${FILESDIR}/n.desktop"
}
