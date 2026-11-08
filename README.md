# dotfiles

My CachyOS rice: **niri** (scrolling Wayland WM) + **noctalia** shell, themed "nixden" — Catppuccin Macchiato (dark) / Latte (light) with one-key switching.

| Piece | Config |
|---|---|
| Window manager | niri (`.config/niri`) |
| Bar, launcher, lockscreen, notifications | noctalia (`.config/noctalia`) |
| Terminal | alacritty, JetBrainsMono Nerd Font 14, 93% opacity |
| Shell + prompt | fish + starship (macchiato/latte) |
| GTK / Qt | adw-gtk3 + noctalia CSS, qt6ct colors, Papirus icons |
| Cursor | Catppuccin mauve (macchiato/latte) |
| Extras | btop, micro (catppuccin), vesktop |
| Login screen | SDDM, Qylock "winter" theme with video background (`system/sddm`) |
| Wallpapers | `Pictures/Wallpapers/nixden` |

## Apps I use

| What | App | How it's installed |
|---|---|---|
| Browser (default) | **Zen** | flatpak `app.zen_browser.zen` |
| Discord | **Vesktop** | pacman `vesktop-bin` (Wayland flag in `.config/vesktop-flags.conf`) |
| Terminal | Alacritty | pacman |
| Shell / prompt | fish + starship | pacman |
| Editor | micro (catppuccin) | pacman |
| Files | Nautilus | pacman |
| System monitor | btop | pacman |
| Backup browser | Firefox | pacman |
| Video | VLC | pacman |
| CLI | gh, ripgrep, rsync, fastfetch, yt-dlp, eza, bat | pacman / `~/.local/bin` |

Base system is CachyOS with niri on top (no GNOME desktop). SDDM is the login manager.
App lists: `packages/pacman.txt` (curated, base CachyOS covers kernel/drivers/firmware) and `packages/flatpak.txt`.

## Install

```sh
git clone https://github.com/kerosene5/dotfiles && cd dotfiles && ./install.sh
```

Then log out and choose the niri session. Existing files get `~` backups.

## Keys

All keybinds live in the `binds { }` block of `.config/niri/config.kdl` (`Mod+Shift+/` shows them all in niri). Highlights:


`Mod+Space` launcher · `Mod+S` control center · `Mod+Return` terminal · `Mod+Shift+T` dark/light toggle (swaps starship, cursor, icons, niri borders and wallpaper via `nixden-theme-sync`) · `Super+Alt+L` lock
