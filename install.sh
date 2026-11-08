#!/usr/bin/env bash
# Installs the nixden rice (niri + noctalia, Catppuccin macchiato/latte) on CachyOS/Arch.
set -euo pipefail
cd "$(dirname "$0")"

sudo pacman -S --needed - < packages/pacman.txt

# Zen is the main browser (flatpak), set as default.
flatpak install -y flathub $(cat packages/flatpak.txt)
xdg-settings set default-web-browser app.zen_browser.zen.desktop

# Existing files are kept as <name>~ backups.
cp -rv --backup=simple home/. "$HOME/"
# Configs hold absolute paths from the old machine.
sed -i "s#/home/kerosene#$HOME#g" "$HOME/.config/niri/config.kdl" "$HOME/.config/noctalia/config.toml"
chmod +x "$HOME/.local/bin/nixden-theme-"*

# GTK settings schema (works without the GNOME desktop).
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'catppuccin-macchiato-mauve-cursors'
gsettings set org.gnome.desktop.interface cursor-size 26
gsettings set org.gnome.desktop.interface font-name 'Inter Variable 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrainsMono Nerd Font Mono 11'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# Login screen: Qylock "winter" SDDM theme (video background).
sudo cp -r system/sddm/themes/winter /usr/share/sddm/themes/
sudo mkdir -p /etc/sddm.conf.d && sudo cp system/sddm/sddm.conf.d/theme.conf /etc/sddm.conf.d/
sudo systemctl enable sddm

[ "$SHELL" = /usr/bin/fish ] || chsh -s /usr/bin/fish
echo "Done. Log out and pick the niri session. Mod+Shift+T toggles dark/light."
