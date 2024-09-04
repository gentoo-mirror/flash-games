# Copyright 2024 Vitaly Zdanevich
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Classic, famous, good looking and good sound"
HOMEPAGE="https://archive.org/details/vector_td#"
SRC_URI="https://archive.org/download/vector_td/VectorDR.swf"

S="${DISTDIR}"

LICENSE="abandoned"
SLOT="0"

RDEPEND="
	app-emulation/ruffle
"

RESTRICT="strip"

QA_PREBUILT="*"

src_install() {
	insinto /opt/
	doins VectorDR.swf

	domenu "${FILESDIR}/vector-td.desktop"
}
