# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="flashrom"
PKG_VERSION="1.5.0"
PKG_SHA256="3ef431cd0f039c1f7b929e81be145885e79192d16a843827e42977f488d9fec5"
PKG_LICENSE="GPL"
PKG_SITE="https://www.flashrom.org"
PKG_URL="https://download.flashrom.org/releases/${PKG_NAME}-v${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain libusb-compat"
PKG_LONGDESC="flashrom is a utility for identifying, reading, writing, verifying and erasing flash chips. It is designed to flash BIOS/EFI/coreboot/firmware/optionROM images on mainboards, network/graphics/storage controller cards, and various other programmer devices."

PKG_MESON_OPTS_TARGET="--wrap-mode=nodownload \
                       -Dprogrammer=dummy,serprog,buspirate_spi,pony_spi,linux_mtd,linux_spi"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/sbin
    cp flashrom ${INSTALL}/usr/sbin
}
