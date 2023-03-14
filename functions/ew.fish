function ew --wraps emacsclient --description "Open an Emacs frame in a GUI window."
    set -l displays (emacsclient --alternate-editor '' --eval '(x-display-list)' 2>/dev/null)

    if test -z "$displays" -o "$displays" = nil
        __emacs_launch $argv --no-wait --create-frame
    else
        __emacs_launch $argv --no-wait
    end
end
