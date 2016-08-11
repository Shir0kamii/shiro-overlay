# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Fighting the copy-paste element of your rebase workflow"
HOMEPAGE="https://github.com/keis/git-fixup"
SRC_URI="https://github.com/keis/git-fixup/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="zsh-completion"

DEPEND="dev-vcs/git"
RDEPEND="${DEPEND}"

src_compile() {
	return
}

src_install() {
	emake DESTDIR=${D} install
	use zsh-completion && emake DESTDIR=${D} install-zsh
}
