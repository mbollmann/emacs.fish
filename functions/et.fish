function et --wraps emacsclient --description "Open an Emacs frame in the terminal."
    __emacs_launch $argv --tty
    commandline --function repaint
end
