# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2017 Escalade
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="cups"
PKG_VERSION="2.4.11"
PKG_SHA256="e66cb3769dfe1e392e495e2532304a3b4b7b3136cff7b387fd5898955a6f64e4"
PKG_LICENSE="GPL"
PKG_SITE="http://www.cups.org"
PKG_URL="https://github.com/openprinting/cups/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain gnutls zlib"
PKG_LONGDESC="CUPS printing system."
PKG_BUILD_FLAGS="+pic -sysroot"

PKG_CONFIGURE_OPTS_TARGET="--libdir=/usr/lib \
                           --disable-gssapi \
                           --with-dnssd=no \
                           --with-tls=gnutls
                           --disable-unit-tests"

pre_configure_target() {
  cd ..
  rm -rf .${TARGET_NAME}
}

makeinstall_target() {
  make BUILDROOT="${INSTALL}" install
}
