# Spacemacs theme for distraction-free writing


## About

This theme is intended to be used for prose writing in spacemacs, together with the [`distraction-free`](https://github.com/dschoenig/distraction-free) layer for Spacemacs. It is heavily inspired by the colour scheme of iA Writer (which is unfortunately not available for Linux). The was originally based on the [`monchrome`](https://github.com/fxn/monochrome-theme.el) theme.


## Installation

To use the theme, place `distraction-free-theme` into `~/.emacs.d/private/themes/distraction-free-theme`. This path has then to be added to the 'dotspacemacs/user-init' function in your '~/.spacemacs':

    (defun dotspacemacs/user-init ()
    (add-to-list 'custom-theme-load-path "~/.emacs.d/private/themes/"))
    
The theme can be loaded by using the theme selector (`SPC T s`) in Spacemacs. A faster way to switch the theme consists in placing `distraction-free` as one of two themes into the `dotspacemacs-themes` list in your `~/.spacemacs`
    
    dotspacemacs-themes '(spacemacs-dark
                          distraction-free)

In newer version of spacemacs, emacs will try to download the theme from MELPA. In this case, add the package to the list of excluded packages in your `~/.spacemacs`

    dotspacemacs-excluded-packages '(
                                    distraction-free-theme
                                    )

The theme may then be switched to with `SPC T n`.
