# Notes for an AI agent setting up this machine

This repo restores Sujai's CachyOS desktop. To set up a new laptop:

1. Run `./install.sh`. It installs every app in `packages/pacman.txt` (curated on purpose, don't add bloat), Zen (flatpak, default browser), copies `home/` into `$HOME` (with `~` backups), installs the SDDM "winter" login theme, sets GTK/cursor/font via gsettings, and switches the shell to fish.
2. The user then logs out and picks the **niri** session in SDDM.

Facts to get right:
- Browser is **Zen**; Firefox is the only backup browser. The user dislikes Chrome: never install it. Never install or configure GNOME (no gnome-shell, gdm, or GNOME apps).
- Discord client is **Vesktop**. Terminal is Alacritty, shell is fish + starship, WM is niri, shell/bar is noctalia.
- Theme is "nixden": Catppuccin Macchiato (dark) / Latte (light). `Mod+Shift+T` runs `~/.local/bin/nixden-theme-toggle` and `nixden-theme-sync`, which swaps starship, cursors, icons, niri borders, and wallpaper.
- Keybinds live in the `binds { }` block of `home/.config/niri/config.kdl`. Note that `Mod+B` currently launches `firefox`; change it to `flatpak run app.zen_browser.zen` if the user wants Zen there.
- Don't commit secrets (SSH keys, tokens, cloud creds) to this repo. Copy those separately.
- Never add Claude/AI co-author or "Generated with" lines to commits. Commit as kerosene5.
