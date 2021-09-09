function vif --wraps='nvim (fzf)'
    if set -q argv[1]
        set fjel (fzf -1 -q $argv[1])
    else
        set fjel (fzf)
    end
    set fzf_status $status
    if test $fzf_status -eq 0
        nvim $fjel
    end
end
