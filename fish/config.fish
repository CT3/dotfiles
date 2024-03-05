if status is-interactive
starship init fish | source
zoxide init fish | source

function fish_greeting
    echo Today is (set_color yellow; date; set_color normal) running  $hostname
end


function weather
    curl curl v2d.wttr.in
end

eval (zellij setup --generate-auto-start fish | string collect)
    # Commands to run in interactive sessions can go here
    alias vi="nvim"
    alias cd="z"
end
