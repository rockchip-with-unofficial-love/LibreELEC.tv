# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2024-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="nfs-utils"
PKG_VERSION="2.8.2"
PKG_SHA256="a39bbea76ac0ab9e6e8699caf3c308b6b310c20d458e8fa8606196d358e7fb15"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="http://www.linux-nfs.org/"
PKG_URL="https://www.kernel.org/pub/linux/utils/nfs-utils/${PKG_VERSION}/nfs-utils-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain keyutils libevent libtirpc libxml2 rpcbind sqlite util-linux"
PKG_LONGDESC="Linux NFS userland utility package"

PKG_CONFIGURE_OPTS_TARGET="--disable-gss \
                           --disable-nfsv41 \
                           --disable-nfsdcld \
                           --disable-nfsrahead \
                           --disable-nfsdcltrack \
                           --disable-ldap"

pre_configure_target() {
  cd ${PKG_BUILD}
  rm -rf .${TARGET_NAME}
}

makeinstall_target() {
  mkdir -p "${INSTALL}/usr/sbin/"
    cp -PR utils/mount/mount.nfs "${INSTALL}/usr/sbin/"
    ln -s mount.nfs "${INSTALL}/usr/sbin/mount.nfs4"
    ln -s mount.nfs "${INSTALL}/usr/sbin/umount.nfs"
    ln -s mount.nfs "${INSTALL}/usr/sbin/umount.nfs4"
}
