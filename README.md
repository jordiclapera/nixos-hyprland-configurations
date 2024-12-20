# nixos-hyprland-configurations
I won't add NixOS configuration yet. Hope you make a good use of the configurations, learn or improve your own ones. And please take in count some features or configuration parts are only for the bleeding-edge versions, using NixOS unstable channel.
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
As I progressed with this repo I fulfilled most of my old objectives. That means it's time for an objective change:
- Continue improving my Git and GitHub skills
- Learn flakes, as it can solve some troubles I have with the configurations
I don't need too much objectives, but the right ones. Maybe this repo will become private after some time till I see it's ready to have one public back again.
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
I won't add yet my NixOS configuration but just as a reminder:
Also, take care of setting the users before the nixos rebuild or it can produce further problems.
## Directories
- In `~/.config` it shall be `foot`, `hypr` and `waybar` directories. You can also use `man waybar` to see other places to put it.
## Hyprland
The deafult terminal in hyprland is kitty, but in my config it is foot. I've just left the two deafult binds to logout and open the terminal, `SUPER+M` and `SUPER+Q`. Make sure to visit the official hyprland web as it's the best way to learn using hyprland (I say it from my experience). That means you must have foot installed or you won't be able to use the terminal in hyprland.
### Waybar
You may need to be in `input` extra-group and have the packages `glibcLocales` and `glibcLocalesUtf8` in order to use waybar properly (that's my own experience and that doesn't mean in future this can't change). Not sure if both glibcLocales are needed, but I have both just in case. Also, in order to see the icons I added some fonts on my configuration.nix:
```
  fonts.packages = with pkgs; [
    font-awesome
    nerdfonts
  ];
```
### Hyprland's benefits and weaknesses
I am currently using KDE toguether with Hyprland to make sure I have benefits from both parts. Hyprland's benefits and weak points are:
#### Hyprland's benefits
- It's a tiling window manager. That's it, you can't use this feature that good in a DE. But do you really need or is it useful to have multiple windows open? Not always, but sometimes yes.
- Strongly customizable. Well, you can also customize KDE right? What's the difference? Well, the difference is that you have a file called `hyprland.conf` and there you can change pretty much everything you want, while in KDE it can be a bit more difficult.
- Theoretically, it would be a benefit to use wayland as wayland is the future and X11 will stay in the past, but as an end user I don't see the difference right now, I'd have to (probably) learn a little bit of C and computer science stuff in order to know what's the best nowadays, so my opinion in this point can't be valid right? I just don't have enough knowledge right now.
- It feels like it opens and closes faster than a DE, so I don't have to wait much opening it.
- Most probably you won't need to use more than 4 or 5 workspaces, and that means you can do pretty anything with fullscreen while you also can use tiling windows. Also you can automate what opens in what workspace, being when you first open the workspace or when opening some kind of program, so you can redirect it to the workspace you like.
#### Hyprland's weaknesses
- You need hours of learning how to use hyprland.conf and probably like two weeks in order to start customizing it for being good enough for you. But all that time spent you can say it's an investment, not a waste. Just ask yourself: do I need a tiling window manager, will it give some benefits I want to have that in Desktop Environments I don't have? No? Go for a DE.
- A bit annoying having to see you can't use F11 and F12 (in my case) to manipulate the screen brightness, so I needed to install `brightnessctl` in order to be able to use (again) my brightness keys. That also applies to the lockscreen, you need to create a shortcut in order to lock. By the way, I use `hyprlock` for that, and the only shame is that I didn't find a way to add buttons on it to poweroff, log off and switch user. In pretty much every DE and in Windows when locking you can do all that.
- The battery life is lower in Hyprland than in KDE. In my case, my battery has 46% of it's initial capacity and that means going to school for some hours using a pc it's painful when you have to worry about your fully charged battery not being able to survive 5 hours without charging. In KDE I have like 4 hours when fully charged while in Hyprland it is 3 hours. With the initial capacity of my battery (when it was young) would be like 9 for KDE and 6 or 7 for Hyprland probably.
#### Other stuff
- Is `hyprland` more productive than a DE? Not always, as DEs are so powerful switching between opened files like `.odt`, `.pdf`, etc. As an example, without multiple workspaces and just with a panel you can just use shortcuts to your favourite programs right? But in a DE it's dificult to specify where are they opened and in which way they're opened. In HYprland it's quite easy to do so, opening some kind of programs on a workspace and choosing how are they seen. So you must choose whatever your workflow works the best, and with which tools it works, just think about desktop environments and window managers as tools. A computer is a tool right? So you only need to select the tools that work the best for your situation, there aren't worst and best ones, the just work fine on their own way.
## License
MIT license, you have some freedom with it ;) .
