
Debian
====================
This directory contains files used to package neond/neon-qt
for Debian-based Linux systems. If you compile neond/neon-qt yourself, there are some useful files here.

## neon: URI support ##


neon-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install neon-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your neon-qt binary to `/usr/bin`
and the `../../share/pixmaps/neon128.png` to `/usr/share/pixmaps`

neon-qt.protocol (KDE)

