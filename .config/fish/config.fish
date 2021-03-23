set fish_greeting '🎣  '

set -x EDITOR nvim
set -x GIT_EDITOR $EDITOR

if which direnv >/dev/null
  eval (direnv hook fish)
end

if test -d $HOME/.local/bin
  set -x PATH $HOME/.local/bin $PATH
end

if test -d $HOME/go
  set -x GOPATH $HOME/go
end

if test -d $GOPATH/bin
  set -x PATH $GOPATH/bin $PATH
end

if test -d /usr/local/go/bin
  set -x PATH /usr/local/go/bin $PATH
end

if test -d /usr/local/go
  set -x PATH /usr/local/go/bin $PATH
end

if test -d /opt/node/bin
  set -x PATH /opt/node/bin $PATH
end

if test -d $HOME/bin
  set -x PATH $HOME/bin $PATH
end

if test -d $HOME/.local/bin
  set -x PATH $HOME/.local/bin $PATH
end

source $HOME/.config/fish/alias.fish
source $HOME/.config/fish/colors.fish

if test -d $HOME/.nix-profile/etc/profile.d/nix.sh
  set fish_function_path $fish_function_path $HOME/.config/fish/plugin-foreign-env/functions
  fenv source '$HOME/.nix-profile/etc/profile.d/nix.sh'
end

if test -e $HOME/.fishrc.fish
  source $HOME/.fishrc.fish
end
