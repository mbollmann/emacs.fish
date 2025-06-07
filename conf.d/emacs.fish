if not status is-interactive && test "$CI" != true
    exit
end

if test (string split -r '.' $version)[1] -gt 3
    bind f4 magit
    bind f5 ed
else
    bind -k f4 magit
    bind -k f5 ed
end

function _emacs_uninstall --on-event emacs_uninstall
    functions --erase ed et ew magit __emacs_launch
end
