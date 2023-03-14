if not status is-interactive && test "$CI" != true
    exit
end

bind --preset -k f4 magit
bind --preset -k f5 ed

function _emacs_uninstall --on-event emacs_uninstall
    functions --erase ed et ew magit __emacs_launch
end
