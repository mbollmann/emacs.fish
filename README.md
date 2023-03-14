# emacs.fish

Fish wrapper for Emacs, Magit, and more.

This project takes inspiration and code from
[pymander/plugin-emacs](https://github.com/pymander/plugin-emacs/).

## Features

This plugin defines several new commands to quickly invoke Emacs, primarily via
`emacsclient` to make use of its daemon capability.

- `et` opens a new Emacs frame within the terminal.
- `ew` opens a new Emacs frame as a GUI window.

Moreover, the plugin provides the following shortcuts to directly invoke certain
Emacs functions:

- `magit` opens [Magit](https://magit.vc/)'s status window. **Binds to `F4`.**
- `ed` opens [Dired](https://www.gnu.org/software/emacs/manual/html_node/emacs/Dired.html). **Binds to `F5`.**

Both of these functions operate on the current working directory, or a directory
given as an argument (or at the cursor position, in case of the keybindings). If
an argument is given that is not a directory, and the `z` command (e.g. from
[jethrokuan/z](https://github.com/jethrokuan/z)) is available, it will
automatically be invoked to find a matching directory.

## Installation

This plugin depends on Emacs 23 or later. Magit must additionally be installed
for the `magit` command.

Install via [fisher](https://github.com/jorgebucaran/fisher):

```
fisher add mbollmann/emacs.fish
```
