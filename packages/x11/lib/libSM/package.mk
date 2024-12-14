# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libSM"
PKG_VERSION="1.2.5"
PKG_SHA256="2af9e12da5ef670dc3a7bce1895c9c0f1bfb0cb9e64e8db40fcc33f883bd20bc"
PKG_LICENSE="OSS"
PKG_SITE="http://www.X.org"
PKG_URL="http://xorg.freedesktop.org/archive/individual/lib/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain util-macros util-linux libICE"
PKG_LONGDESC="This package provides the main interface to the X11 Session Management library."
PKG_BUILD_FLAGS="+pic"

PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           --disable-shared \
                           --with-libuuid \
                           --without-xmlto \
                           --without-fop"
