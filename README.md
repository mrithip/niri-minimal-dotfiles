# Dotfiles for Niri + Sway stack

A clean set of desktop environment configuration files for a modern Linux setup built around the Niri compositor, Waybar, SwayNC, swaylock, Fuzzel, and Foot.

## Included configs

- `foot/foot.ini` — terminal configuration
- `fuzzel/fuzzel.ini` — app launcher
- `niri/config.kdl` — window manager configuration
- `swaybg/random_wallpaper.sh` — random wallpaper script
- `swaylock/config` — lock screen configuration
- `swaync/config.json` — notification center configuration
- `swaync/style.css` — notification center styling
- `waybar/config` — top bar configuration
- `waybar/style.css` — top bar styling
- `wlogout/layout` — logout menu actions
- `wlogout/style.css` — logout menu styling

## What this setup is for

This configuration is designed for a polished, low-noise Linux desktop experience with:

- Niri as the compositor
- Waybar as the status bar
- SwayNC for notifications
- swaylock for locking the screen
- wlogout for power/logout actions
- Fuzzel for quick launching
- Foot as the terminal

## Quick start

1. Install the required programs:
   - niri
   - waybar
   - swaync
   - swaylock
   - sway-effects (required for the custom lockscreen script)
   - wlogout
   - swaybg
   - fuzzel
   - foot
   - playerctl
   - brightnessctl
   - network-manager-applet

2. Copy or symlink the files into your actual config locations:

   ```bash
   mkdir -p ~/.config/foot ~/.config/fuzzel ~/.config/niri ~/.config/swaybg ~/.config/swaylock ~/.config/swaync ~/.config/waybar ~/.config/wlogout

   cp -r foot/* ~/.config/foot/
   cp -r fuzzel/* ~/.config/fuzzel/
   cp -r niri/* ~/.config/niri/
   cp -r swaybg/* ~/.config/swaybg/
   cp -r swaylock/* ~/.config/swaylock/
   cp -r swaync/* ~/.config/swaync/
   cp -r waybar/* ~/.config/waybar/
   cp -r wlogout/* ~/.config/wlogout/
   ```

3. Make the wallpaper script executable:

   ```bash
   chmod +x ~/.config/swaybg/random_wallpaper.sh
   ```

4. Restart your Niri session or log back in.

## Personalization checklist

- Update the monitor output name in `niri/config.kdl` to match your hardware.
- Set your wallpaper folder in `swaybg/random_wallpaper.sh` if your directory is different.
- Install `sway-effects` before using the custom lockscreen script in `.local/bin/lockscreen.sh`; it expects the compiled binary at `$HOME/.local/bin/swaylock-effects`.
- Check the custom lock and recording scripts in `.local/bin/` if you use a different local setup.
- Install any fonts you want to use, such as `Inter` or `JetBrainsMono Nerd Font`.

## Personalization suggestions

- Replace the wallpaper directory in `swaybg/random_wallpaper.sh`
- Update the monitor output name in `niri/config.kdl` if it does not match your hardware
- Adjust the border, accent colors, and panel shortcuts for your own taste
- Remove or replace widgets you do not use in `waybar/config`
