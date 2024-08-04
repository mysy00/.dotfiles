fish_add_path $XDG_DATA_HOME/cargo/bin
fish_add_path $HOME/.local/bin

set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

set -gx EDITOR nvim

set -gx BAT_THEME "Catppuccin Mocha"
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Volta
set -gx VOLTA_HOME "$XDG_CACHE_HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# Fix flatpak apps not being recognized
if command -vq flatpak
    set -ga fish_user_paths ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    set -gx --path XDG_DATA_DIRS /usr/local/share/ /usr/share/ ~/.local/share/flatpak/exports/share
    for install_dir in (flatpak --installations)
        set -gxa XDG_DATA_DIRS $install_dir/exports/share
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Custom Prompt
    set fish_greeting
    starship init fish | source

    if test -e ~/.cache/wal/colors.fish
        source ~/.cache/wal/colors.fish
    end

    if test -e ~/.cache/wal/sequences
        cat ~/.cache/wal/sequences
    end

end

# Import additional files
source $XDG_CONFIG_HOME/fish/aliases.fish

