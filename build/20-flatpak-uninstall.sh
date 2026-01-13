#!/usr/bin/env bash
set -oue pipefail

echo "Running custom setup..."
flatpak remove org.kde.kclock -y
flatpak remove io.github.flattool.Warehouse -y
flatpak remove flathub io.missioncenter.Missioncenter -y
flatpak remove flathub org.deskflow.deskflow -y
flatpak remove flathub org.fedoraproject.MediaWriter -y
flatpak remove flathub org.fkoehler.KTailctl -y
flatpak remove flathub org.gnome.Dejadup -y
flatpak remove flathub org.kde.haruna -y
flatpak remove flathub org.kde.kcalc -y
flatpak remove flathub org.kde.kontact -y
flatpak remove flathub org.kde.kweather -y
flatpak remove flathub org.kde.skanpage -y
flatpak remove flathub org.mozilla.Thunderbird -y
flatpak remove flathub org.mozilla.firefox -y
