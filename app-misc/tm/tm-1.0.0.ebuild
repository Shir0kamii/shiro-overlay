# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="tmux manager"
HOMEPAGE="https://github.com/Ganeff/tm"
SRC_URI=""
EGIT_REPO_URI="https://github.com/Ganneff/tm.git"
EGIT_COMMIT="38045a3"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="zsh-completion"

DEPEND="app-misc/tmux"
RDEPEND="${DEPEND}"

src_compile() {
	return
}

src_install() {
	into /
	dobin tm

	if use zsh-completion; then
		insinto /usr/local/share/zsh/site-functions
		doins _tm
	fi
}
