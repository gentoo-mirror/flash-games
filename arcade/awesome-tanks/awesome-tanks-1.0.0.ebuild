# Copyright 2024 Vitaly Zdanevich
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Fun fast arcade, top-down, with coins collection and upgrades (RPG elements)"
HOMEPAGE="https://www.wikidata.org/wiki/Q130251998"
SRC_URI="
	https://archive.org/download/awesome-tanks-2-13711/587840_awesomeTanks.swf -> awesome-tanks.swf
	https://archive.org/download/awesome-tanks-2-13711/599993_dingo.swf -> awesome-tanks-2.swf
"

S="${DISTDIR}"

LICENSE="freeware"
SLOT="0"

RDEPEND="
	app-emulation/ruffle
"

RESTRICT="strip"

QA_PREBUILT="*"

src_install() {
	insinto /opt/
	doins *.swf

	domenu "${FILESDIR}/awesome-tanks.desktop"
	domenu "${FILESDIR}/awesome-tanks-2.desktop"
}
