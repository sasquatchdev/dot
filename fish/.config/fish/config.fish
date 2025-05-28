if status is-interactive
  abbr -a cd z
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
zoxide init fish | source
starship init fish | source

fish_add_path /home/sasquatchdev/.local/bin
