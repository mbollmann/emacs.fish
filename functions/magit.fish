if not command -q git
    return
end

function magit --description "Open Magit status buffer on a directory."
    set -l cwd (pwd)
    set -l arg "$cwd"

    if test -n "$argv[1]"
        if test -d "$argv[1]"
            set arg $argv[1]
        else if functions --query z
            set -l dir (z -e "$argv[1]")
            if test -d "$dir"
                set arg $dir
            else
                echo "Not a directory: $argv[1]"
                return 1
            end
        else
            echo "Not a directory: $argv[1]"
            return 1
        end
    end

    cd "$arg"
    if not git rev-parse --is-inside-work-tree 2>/dev/null >/dev/null
        echo "Not a git repository: $arg"
        cd "$cwd"
        return 1
    end

    __emacs_launch --tty --eval "(magit-status)"
    cd "$cwd"
    commandline --function repaint
end
