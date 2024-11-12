# nixos-hyprland-configurations
##Table of Contents
- [Best practices](#best-practices)
- [Directories](#directories)
- [Hyprland](#hyprland)
- [License](#license)
## Best practices
- Always have a copy of your configuration.nix on one of your user's directories, it's easy to copy and paste to `/etc/nixos/configuration.nix` and there aren't that much problems with privileges using git like that.
- Take care of this repo's configuration languages, as they can create issues with your keyboard.
- Make sure all directories with their files are at the correct places, else they won't work as expected.
- Always have a backup outside your local machine, be prepared to rollback if needed
- Don't rush and keep calm, even if NixOS rejects bad configurations and prevents major problems it's always good to keep an eye and be sure of having a functional configuration.
### Language
Specially be careful on the   
```
# Configure keymap in X11
  services.xserver.xkb = {
    layout = "es";
    variant = "cat";
  };
```
  part of configuration.nix, as it can make your keyboard layout an spanish one and produce some key errors, so please set it up properly before using `sudo nixos-rebuild switch`, or you can also try the new configuration without switching to it for your security with `sudo nixos-rebuild test`.
### Users
Also, take care of setting the users before the rebuild or it can produce further problems.
## Directories
That said, to use hyprland you don't need to have any `hypr` directory as the deafult is created automatically in order to use hyprland window manager. You may have problems having an hypr without being you the owner and in that case it automatically logs you out, but that won't happen unless you copy and paste it as root from a user to another, or probably other weird scenarios.
- In `~/.config` it shall be `foot`, `hypr` and `waybar` directories. You can also use `man waybar` to see other places to put it.
## Hyprland
The deafult terminal in hyprland is kitty, but in my config it is foot. I've just left the two deafult binds to logout and open the terminal, `SUPER+M` and `SUPER+Q`. Make sure to visit the official hyprland web as it's the best way to learn using hyprland (I say it from my experience).
### Waybar
You may need to be in `input` extra-group and have the packages `glibcLocales` and `glibcLocalesUtf8` in order to use waybar properly (that's my own experience and that doesn't mean in future this can't change). Not sure if both are needed, but just in case.
## License
MIT license, you have some freedom with it ;) .
