if status is-interactive
starship init fish | source
zoxide init fish | source
eval (zellij setup --generate-auto-start fish | string collect)
    # Commands to run in interactive sessions can go here
    #a
    alias vi="nvim"
end
