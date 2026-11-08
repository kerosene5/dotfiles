source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end


# Nixden rainbow prompt, initialized after the CachyOS fish defaults.
function fish_greeting
end
if status is-interactive
    starship init fish | source
end


