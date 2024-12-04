# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="zvbi"
PKG_VERSION="0.2.43"
PKG_SHA256="437522d8d0906c43c0a51163f40a3a7e4c0f1f377c0d2d5f25c1b69c827fb3ed"
PKG_LICENSE="GPL2"
PKG_SITE="https://github.com/zapping-vbi/zvbi"
PKG_URL="https://github.com/zapping-vbi/zvbi/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain libpng zlib"
PKG_LONGDESC="Library to provide functions to capture and decode VBI data."
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--disable-dvb \
                           --disable-bktr \
                           --disable-examples \
                           --disable-nls \
                           --disable-proxy \
                           --disable-tests \
                           --without-doxygen \
                           --without-x"
