# nixos-hyprland-configurations
## Table of Contents
- [Who am I](#who-am-i)
- [Objectives](#objectives)
- [NixOS](#nixos)
- [Best practices](#best-practices)
- [Directories](#directories)
- [Hyprland](#hyprland)
- [License](#license)
## Who am I
I'm a newbie in Linux (since September 2024), using NixOS with unstable channel. That means I make errors, plenty of them, and that the configs I share here may not work or may have unexpected behaviour at stable versions. And as I am catalan, their layout is catalan, so make sure to change it (in case you haven't got spanish keyboard) in case you want to copy and paste a configuration from here.
Also I'd recomend you to have at least two users, or try it in a vm, or else be able to use another WM or a DE in case you update the hyprland configuration (best way is using vm first). That way you won't have much to lose.
Well, it's on your own risk, so make informed decisions, and I hope you can learn and experience with my configurations, if that's what you want.
## Objectives
When I created this repo I had some things in mind:
- I want to have a public repo that lets me get my configs easily without many restrictions, and by the way let it open to all people
- Learn by doing, gaining experience with Git and GitHub, and having a good and open backup that lets me be able to work good with hyprland (with it's own benefits as a tilling window manager)
- I also wanted to implement scripts to save the configurations, but that might not end working as I expected but somehow they work now
Later I thinked of doing a weird thing that probably won't work, but dreams are free and it only makes me gain scripting experience:
- Create an script that lets switch easily between different configurations
The problem with this last thing is that I always end at the point that it must be, at least, some manual intervention. And as the git tools are so powerful it may not have sense to create that kind of script so it probably won't happen to exist at the end.
## NixOS
As I use NixOS the hyprland configurations are specially done to fit with this operating system. It won't be anything that can't be done with NixOS, but who knows if that can be said for the opposite side, working in other distros.
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
