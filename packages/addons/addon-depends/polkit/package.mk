# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="polkit"
PKG_VERSION="125"
PKG_SHA256="ea5cd6e6e2afa6bad938ee770bf0c2cd9317910f37956faeba2869adcf3747d1"
PKG_LICENSE="GPL"
PKG_SITE="https://polkit.pages.freedesktop.org/polkit"
PKG_URL="https://github.com/polkit-org/polkit/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain expat glib"
PKG_LONGDESC="polkit provides an authorization API intended to be used by privileged programs offering service to unprivileged programs"
PKG_BUILD_FLAGS="-sysroot"

PKG_MESON_OPTS_TARGET="-Dauthfw=shadow \
                       -Dlibs-only=true \
                       -Dintrospection=false"
