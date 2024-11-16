# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2023-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="aspnet8-runtime"
PKG_VERSION="8.0.11"
PKG_LICENSE="MIT"
PKG_SITE="https://dotnet.microsoft.com/"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="ASP.NET Core Runtime enables you to run existing web/server applications."
PKG_TOOLCHAIN="manual"

case "${ARCH}" in
  "aarch64")
    PKG_SHA256="4f83cb39dbd515ea8319a8c2c32f041a2972301343cd31621c4bb402a300cfd6"
    PKG_URL="https://download.visualstudio.microsoft.com/download/pr/64a9f696-b039-4a73-b705-288fbf9c2e8f/c36bc24d6d359c019408b4f94ee67b59/aspnetcore-runtime-8.0.11-linux-arm64.tar.gz"
    ;;
  "arm")
    PKG_SHA256="a3b38882b0df6b1d320a921111e678d792658af23d36dadb678bca9f9c98bc19"
    PKG_URL="https://download.visualstudio.microsoft.com/download/pr/003f180b-e695-4094-bc3f-ef6473883d43/e861cb56edd58b05b03b5a92cf995f12/aspnetcore-runtime-8.0.11-linux-arm.tar.gz"
    ;;
  "x86_64")
    PKG_SHA256="3fc75c38783b282140d2e2513c570f76991101b3f895b67a6ae8fba2a2d96399"
    PKG_URL="https://download.visualstudio.microsoft.com/download/pr/6f89757c-3dde-4c3a-96a0-b04b1bde2c92/6a3591b360ed0f9d1118b97560b89625/aspnetcore-runtime-8.0.11-linux-x64.tar.gz"
    ;;
esac
PKG_SOURCE_NAME="aspnetcore-runtime_${PKG_VERSION}_${ARCH}.tar.gz"
