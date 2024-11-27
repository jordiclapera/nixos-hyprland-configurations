# Please note that these are my personal scripts so be careful using them

# Message when opening the terminal
echo "Hello from $0, $USER"
echo "'main-save' to copy my configs to $HOME/.dotfiles and save the changes to GitHub"
echo "'public-save' in order to save the .dotfiles configurations on my public GitHub repositoriy"
echo "'jctls' to use journalctl with the date XX:XX that you want since that point"
echo "Used aliases"

###############
### ALIASES ###
###############

# Remember: aliases don't work good with variables, use functions instead when working with variables
# Print and set aliases, note that some are for personal use as it's my personal script

alias vpnc='sudo protonvpn c -f'
alias vpnd='sudo protonvpn d'
alias bashrc='nvim ~/.bashrc'
alias nixedit='sudo nvim /etc/nixos/configuration.nix'
alias hyco='nvim ~/.config/hypr/hyprland.conf'
alias ls='ls --color=auto'
alias l='ls -l --color=auto'
alias

###########
### PS1 ###
###########

# Improve PS1 for zsh
# PS1="%B[%F{blue}%n@%m %f%~]%F{214}$ %f%b"

#################
### FUNCTIONS ###
#################

# Variables for functions
dotfiles=$HOME/.dotfiles/nixconfiguration
config=$HOME/.config/
hyprland_conf=$HOME/.hyprland-conf/nixos-hyprland-configurations/

# Run okular in the background
rea() {
nohup okular $@ & disown
}

# Run libreoffice in the background
wri() {
nohup libreoffice $@ & disown
}

# Save the configurations on my private repo, you may want to use different paths so edit them as you like in case of using it for yourself
main-save() {
rm $dotfiles/* -rf; cd $dotfiles; mkdir wallpapers/background -p; mkdir wallpapers/hyprlock-background; cp $config/hypr/ $config/foot/ $config/waybar/ $config/nvim/ $config/wofi/ $config/wlogout/ $HOME/.nixos-de/configuration.nix $HOME/.zshrc $HOME/.bashrc $dotfiles -R; cp $HOME/Pictures/background/* $dotfiles/wallpapers/background/ -Rf; cp $HOME/Pictures/hyprlock-background/* $dotfiles/wallpapers/hyprlock-background -Rf; git add .; git commit -m $1 -m $2; git push; cd
}

# Save the configurations on my public repo, you may not want to use this function
public-save() {
rm $hyprland_conf/* -rf; cp $dotfiles/* $dotfiles/.bashrc $dotfiles/.zshrc $HOME/.hyprland-conf/LICENSE $HOME/.hyprland-conf/README.md $hyprland_conf -Rf; cd $hyprland_conf; git add .; git commit -m $1 -m $2; git push; cd
}

# Automate transfering the configuration files to the right places.
# Note that you may want to change some paths if you use the configs in different directories so take care about it
deploy-conf() {
cp $hyprland_conf/hypr $hyprland_conf/foot $hyprland_conf/waybar $hyprland_conf/nvim $hyprland_conf/wofi/ $hyprland_conf/wlogout $config -R; cp $hyprland_conf/.bashrc $hyprland_conf/.zshrc $config -Ri; cp $hyprland_conf/wallpapers/background/* $HOME/Pictures/background; cp $hyprland_conf/wallpapers/hyprlock-background/* $HOME/Pictures/hyprlock-background/; cd
}

# use the journalctl since some point of time XX:XX of the day
jctls() {
journalctl --since=$1
}

###############
### EXPORTS ###
###############

# Change the language to British English
export LANG=en_GB.UTF-8

export EDITOR="nvim"
export VISUAL="nvim"

# Set custom LS_COLORS, note that : acts as separator
export LS_COLORS="di=1;34:ln=1;36:so=1;35:pi=1;33:ex=1;32:*.sh=1;31:*.md=1;34:*.pdf=0;33:*.css=0;35:*.html=0;35:*.txt=0;32:*.odt=0;32:*.doc=0;32:*.docx=0;32"

