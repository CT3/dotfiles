if status is-interactive
starship init fish | source
zoxide init fish | source

function weather
    curl curl v2d.wttr.in
end


eval (zellij setup --generate-auto-start fish | string collect)
    # Commands to run in interactive sessions can go here
    #a
    alias vi="nvim"
    alias cd="z"
end
