function ed --description "Open dired on a directory."
    set -l arg "default-directory"

    if test -n "$argv[1]"
        if test -d "$argv[1]"
            set arg \"$argv[1]\"
        else if functions --query z
            set -l dir (z -e "$argv[1]")
            if test -d "$dir"
                set arg \"$dir\"
            end
        end
    end

    __emacs_launch --tty --eval "(dired $arg)"
    commandline --function repaint
end
