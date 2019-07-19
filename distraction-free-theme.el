;;; distraction-free-theme.el --- A minimal theme intended to be used with writeroom-mode
;;
;; Author: Daniel Schoenig
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:
;;
;; Based on the monochrome theme. Colours are inspired by iA Writer.

(deftheme distraction-free
  "A minimal theme for distraction-free writing.")

(let ((class '((class color) (min-colors 10)))
      (black "#141414")
      (white "#f5f5f5")
      (lgray "#d4d4d4")
      (dgray "#303030")
      (sgray "#606060")
      (blue  "#1dafe6")
      (lblue "#b3e2f2"))

  (custom-theme-set-faces
   'distraction-free

   `(default ((,class (:foreground ,black :background ,white))))
   `(cursor ((,class (:background ,blue))))

   ;; Highlighting faces
   `(fringe ((,class (:foreground ,black :background ,white))))
   `(highlight ((,class (:foreground ,black :background ,white))))
   `(region ((,class (:foreground ,black :background ,lblue))))
   `(secondary-selection ((,class (:foreground: ,black :background ,lgray))))
   `(isearch ((,class (:foreground ,white :background ,dgray))))
   `(lazy-highlight ((,class (:foreground ,black :background ,lgray))))
   `(linum ((,class (:foreground ,dgray))))
   `(trailing-whitespace ((,class (:background ,lblue))))

   ;; writegood-mode faces
   `(writegood-weasels-face ((,class (:foreground ,black :background "#fb9a99" :underline nil))))
   `(writegood-passive-voice-face ((,class (:foreground ,black :background "#b2df8a" :underline nil))))
   `(writegood-duplicates-face ((,class (:foreground ,black :background "#cab2d6" :underline nil))))

   ;; Mode line faces
   `(mode-line ((,class (:box (:line-width -1 :style released-button)
			      :background "#e5e5e5" :foreground ,dgray))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
				       :background "#b0b0b0"
				       :foreground ,black))))

   ;; Window dividers
   `(window-divider ((,class (:foreground ,white :background ,white))))
   `(window-divider-first-pixel ((,class (:foreground ,white :background ,white))))
   `(window-divider-last-pixel ((,class (:foreground ,white :background ,white))))

   ;; Whitespace-mode
   `(whitespace-empty ((,class (:background unspecified :foreground ,lblue))))
   `(whitespace-line ((,class (:background ,lgray :foreground ,black))))

   ;; Escape and prompt faces
    `(minibuffer-prompt ((,class (:weight bold :foreground ,dgray))))
    `(escape-glyph ((,class (:foreground ,dgray))))
    `(error ((,class (:background ,dgray :weight bold :slant italic :foreground "red"))))
    `(warning ((,class (:background ,dgray :foreground ,blue))))
    `(success ((,class (:background ,dgray :foreground "green"))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,dgray))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,sgray))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,dgray))))
   `(font-lock-function-name-face ((,class (:foreground ,black))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,black))))
   `(font-lock-string-face ((,class (:foreground ,sgray))))
   `(font-lock-type-face ((,class (:weight bold :foreground ,dgray))))
   `(font-lock-variable-name-face ((,class (:weight bold :foreground ,lgray))))
   `(font-lock-warning-face ((,class (:foreground ,blue))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,dgray))))
   `(link-visited ((,class (:underline t :foreground ,dgray))))

   ;; Show-paren
   `(show-paren-match ((t (:foreground ,black :background ,white :underline t))))
   `(show-paren-mismatch ((t (:background "red"))))

   ;; Speedbar
   `(speedbar-button-face ((,class (:foreground ,lgray))))
   `(speedbar-file-face ((,class (:foreground ,dgray))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,black))))
   `(speedbar-tag-face ((,class (:foreground ,lgray))))
   `(speedbar-selected-face ((,class (:underline ,lgray :foreground ,dgray))))
   `(speedbar-highlight-face ((,class (:weight bold :background ,white :foreground ,black))))

   ;; ido
   `(ido-first-match ((,class (:foreground ,dgray))))
   `(ido-only-match ((,class (:underline ,dgray :eoreground ,dgray))))
   `(ido-subdir ((,class (:weight bold :foreground ,black))))

   ;; MuMaMo
   `(mumamo-background-chunk-major ((,class (:background ,white))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,white))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,white))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,white))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,white))))
   `(mumamo-border-face-in ((,class (:slant unspecified :underline unspecified
                                     :weight bold :foreground ,black))))
   `(mumamo-border-face-out ((,class (:slant unspecified :underline unspecified
                                      :weight bold :foreground ,black))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-news-1-low ((,class (:foreground ,dgray))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-news-2-low ((,class (:foreground ,dgray))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-news-3-low ((,class (:foreground ,dgray))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-news-4-low ((,class (:foreground ,dgray))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,lgray))))
   `(gnus-group-news-5-low ((,class (:foreground ,lgray))))
   `(gnus-group-news-low ((,class (:foreground ,dgray))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-mail-1-low ((,class (:foreground ,dgray))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-mail-2-low ((,class (:foreground ,dgray))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,dgray))))
   `(gnus-group-mail-3-low ((,class (:foreground ,dgray))))
   `(gnus-group-mail-low ((,class (:foreground ,dgray))))
   `(gnus-header-content ((,class (:foreground ,dgray))))
   `(gnus-header-from ((,class (:weight bold :foreground ,dgray))))
   `(gnus-header-subject ((,class (:foreground ,dgray))))
   `(gnus-header-name ((,class (:foreground ,dgray))))
   `(gnus-header-newsgroups ((,class (:foreground ,dgray))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,dgray))))
   `(message-header-cc ((,class (:foreground ,dgray))))
   `(message-header-other ((,class (:foreground ,dgray))))
   `(message-header-subject ((,class (:foreground ,dgray))))
   `(message-header-to ((,class (:weight bold :foreground ,dgray))))
   `(message-cited-text ((,class (:slant italic :foreground ,dgray))))
   `(message-separator ((,class (:weight bold :foreground ,dgray))))

      ;; EShell
   `(eshell-prompt ((,class (:foreground ,black :bold t))))
   `(eshell-ls-archive ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-backup ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-clutter ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-directory ((,class (:foreground ,dgray :bold t))))
   `(eshell-ls-executable ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-missing ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-product ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-readonly ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-special ((,class (:inherit eshell-ls-unreadable))))
   `(eshell-ls-symlink ((,class (:inherit eshell-ls-unreadable))))

   ;; Org-mode
   `(org-level-1 ((t (:bold t :foreground ,dgray :height 1.5))))
   `(org-level-2 ((t (:bold nil :foreground ,dgray :height 1.2))))
   `(org-level-3 ((t (:bold t :foreground ,dgray :height 1.0))))
   `(org-level-4 ((t (:bold nil :foreground ,dgray :height 1.0))))
   `(org-link ((t (:foreground ,sgray :underline t))))
   `(org-todo ((t (:bold t :foreground "red"))))
   `(org-done ((t (:bold t :foreground "green"))))

      ;; helm
   `(helm-header ((t (:foreground ,dgray :background ,white :underline nil :box nil))))
   `(helm-source-header
     ((t (:foreground ,dgray
                      :underline nil
                      :weight bold
                      :box (:line-width 1 :style released-button)))))
   `(helm-selection ((t (:underline t :foreground ,dgray))))
   `(helm-visible-mark ((t (:foreground ,dgray :background ,white))))
   `(helm-candidate-number ((t (:foreground ,dgray :background ,white))))
   `(helm-separator ((t (:foreground ,dgray :background ,white))))
   `(helm-time-zone-current ((t (:foreground ,dgray :background ,white))))
   `(helm-time-zone-home ((t (:foreground ,dgray :background ,white))))
   `(helm-bookmark-addressbook ((t (:foreground ,dgray :background ,white))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,dgray :background ,white))))
   `(helm-bookmark-info ((t (:foreground ,dgray :background ,white))))
   `(helm-bookmark-man ((t (:foreground ,dgray :background ,white))))
   `(helm-bookmark-w3m ((t (:foreground ,dgray :background ,white))))
   `(helm-buffer-not-saved ((t (:foreground ,dgray :background ,white))))
   `(helm-buffer-process ((t (:foreground ,dgray :background ,white))))
   `(helm-buffer-saved-out ((t (:foreground ,dgray :background ,white))))
   `(helm-buffer-size ((t (:foreground ,dgray :background ,white))))
   `(helm-ff-directory ((t (:foreground ,dgray :background ,white :weight bold))))
   `(helm-ff-file ((t (:foreground ,dgray :background ,white :weight normal))))
   `(helm-ff-executable ((t (:foreground ,dgray :background ,white :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,white :background ,white :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,dgray :background ,white :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,dgray :background ,white :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,dgray :background ,white))))
   `(helm-grep-file ((t (:foreground ,dgray :background ,white))))
   `(helm-grep-finish ((t (:foreground ,dgray :background ,white))))
   `(helm-grep-lineno ((t (:foreground ,dgray :background ,white))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,dgray :background ,white))))
   `(helm-moccur-buffer ((t (:foreground ,dgray :background ,white))))
   `(helm-mu-contacts-address-face ((t (:foreground ,dgray :background ,white))))
   `(helm-mu-contacts-name-face ((t (:foreground ,dgray :background ,white))))

   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified :slant unspecified :underline ,dgray))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified :slant unspecified :underline ,dgray)))))

  (custom-theme-set-variables
   'distraction-free
   `(ansi-color-names-vector [,white ,dgray ,lgray ,sgray, blue, lblue])))

;; Focus for distraction-free spacemacs layer
(defun distraction-free-focus-on ()
  (interactive)
  (set-face-attribute 'default nil :foreground "#d4d4d4" :background "#f5f5f5")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-comment-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-constant-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-string-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-type-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-warning-face nil :foreground "#d4d4d4")
  (set-face-attribute 'sp-show-pair-match-face nil :foreground "#d4d4d4"))

(defun distraction-free-focus-off ()
  (interactive)
  (set-face-attribute 'default nil :foreground "#141414" :background "#f5f5f5")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "#303030")
  (set-face-attribute 'font-lock-comment-face nil :foreground "#606060")
  (set-face-attribute 'font-lock-constant-face nil :foreground "#303030")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "#141414")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "#141414")
  (set-face-attribute 'font-lock-string-face nil :foreground "#606060")
  (set-face-attribute 'font-lock-type-face nil :foreground "#303030")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#d4d4d4")
  (set-face-attribute 'font-lock-warning-face nil :foreground "1dafe6"))

;; Autoload for MELPA

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'distraction-free)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; distraction-free-theme.el ends here
