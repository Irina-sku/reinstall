#!/bin/bash

# installs homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# adding casks tap
brew tap homebrew/cask-versions

#install jdk11
brew cask install java11

# applications
brew cask install firefox
brew cask install google-chrome
brew cask install intellij-idea
brew cask install discord
brew cask install steam

# terminal helpers/addons
brew install fish
brew install htop
brew install tmux

# tmux key remapping & configuration
touch ~/.tmux.conf
sed -i "# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# split panes using | and -
bind / split-window -h
bind - split-window -v
unbind '"'
unbind %

# switch panes using Alt-arrow without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on

# don't rename windows automatically
set-option -g allow-rename off" ~/.tmux.conf


