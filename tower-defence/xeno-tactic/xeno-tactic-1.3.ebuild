# Copyright 2024 Vitaly Zdanevich
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Very hard on the second level"
HOMEPAGE="https://www.newgrounds.com/portal/view/382321"
SRC_URI="https://uploads.ungrounded.net/382000/382321_xenotactic.swf -> xeno-tactic.swf"

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
	doins *.swf

	domenu "${FILESDIR}/xeno-tactic.desktop"
}
