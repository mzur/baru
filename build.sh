#!/usr/bin/env bash

set -e

meson build
cd build
meson configure -Dprefix=/dist
ninja -j4 install
cd /dist/share/icons
tar -czf /build/icons.tar.gz Baru
cd /dist/share/themes/Baru
cp -r /dist/share/gnome-shell/theme/Baru gnome-shell
cd /dist/share/themes/Baru-dark
cp -r /dist/share/gnome-shell/theme/Baru gnome-shell
cd /dist/share/themes
tar -czf /build/themes.tar.gz Baru Baru-dark
