# Spacemacs theme for distraction-free writing


## About

This theme is intended to be used for distraction-free writing (and coding) in
spacemacs, together with the
[`distraction-free`](https://github.com/dschoenig/distraction-free) layer for
Spacemacs. It is heavily inspired by the colour scheme of iA Writer (which is
unfortunately not available for Linux). The was originally based on the
[`monochrome`](https://github.com/fxn/monochrome-theme.el) theme.


## Installation

To use the theme, place `distraction-free-theme` into
`~/.emacs.d/private/themes/distraction-free-theme`. This path has then to be
added to the 'dotspacemacs/user-init' function in your '~/.spacemacs':

    (defun dotspacemacs/user-init ()
    (add-to-list 'custom-theme-load-path "~/.emacs.d/private/themes/"))
    
The theme can be loaded by using the theme selector (`SPC T s`) in Spacemacs. A
faster way to switch the theme consists in placing `distraction-free` as one of
two themes into the `dotspacemacs-themes` list in your `~/.spacemacs`, e.g.
    
    dotspacemacs-themes '(spacemacs-dark
                          distraction-free)

In newer version of spacemacs, emacs will try to download the theme from MELPA.
The only way that has worked consistently, is to add the package to the list of
excluded packages in your `~/.spacemacs`. If you have a better solution that
works, let me know.

    dotspacemacs-excluded-packages '(
                                    distraction-free-theme
                                    )

The theme may then be switched to with `SPC T n`.
                                    
To prevent the cursor from changing colour, adjust your `~/.spacemacs`:

    dotspacemacs-colorize-cursor-according-to-state nil

## Focus on current line

When used with the
[`distraction-free`](https://github.com/dschoenig/distraction-free) layer for
Spacemacs, the `distraction-free-focus` function allow to focus on the current
line only. The adjusments to colours and highlighting are theme-specific and
thus provided by the functions `distraction-free-focus-on` and
`distraction-free-focus-off` directly within the theme.

## Can I use this theme for coding?

Yes, of course you can! I do so myself and optimized the appearance for R,
python and SQL. Other languages might require additional tweaks.
