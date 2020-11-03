#!/bin/sh
sudo xbps-install -Suv
sudo xbps-install -y xorg xorg-fonts alsa-utils apulse elogind dbus-elogind dbus-elogind-libs
dbus-elogind-x11 brightnessctl tlp base-devel clang git curl
sudo xbps-install -y bspwm sxhkd
sudo xbps-install -y mesa-vulkan-radeon mesa-vaapi mesa-vdpau
sudo xbps-install -y gtk+ gtk+-devel
sudo xbps-install -y google-fonts-ttf font-awesome
sudo xbps-install -y compton redshift nitrogen unclutter xset xss-lock xautolock xnots polybar
network-manager-applet udevil pcmanfm neovim xterm zsh fzf xarchiver dmenu sxiv slock most
compton clipmenu cmus rover vifm ranger surf lynx pandoc sdcv mplayer simple-mtpfs firefox jq neofetch
words-en man-pages-devel man-pages-posix
sudo xbps-install -y mpv gimp resynthesizer dia filezilla nomacs scid_vs_pc gucharmap
sudo xbps-install -y zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps
sudo xbps-install -y nodejs ctags the_silver_searcher tidy5
sudo xbps-install -y python3-devel python-devel ruby-devel lua-devel python-pip python3-pip
sudo xbps-install -y apache php-apache php-intl mariadb phpMyAdmin php-mysql xdebug php-gd composer
sudo xbps-install -y opencv libopencv-python libopencv-python3
sudo xbps-install -y SFML SFML-devel cmake
sudo xbps-install -y openjdk8 openjdk8-jre
sudo xbps-install -y perl-Tk python-tkinter python3-tkinter
