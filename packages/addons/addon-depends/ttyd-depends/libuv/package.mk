# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libuv"
PKG_VERSION="1.49.2"
PKG_SHA256="388ffcf3370d4cf7c4b3a3205504eea06c4be5f9e80d2ab32d19f8235accc1cf"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/libuv/libuv"
PKG_URL="https://github.com/libuv/libuv/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Multi-platform support library with a focus on asynchronous I/O"

PKG_CMAKE_OPTS_TARGET="-DLIBUV_BUILD_TESTS=OFF"
