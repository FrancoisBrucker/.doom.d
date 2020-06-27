;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; heavily used as inspiration :
;; https://github.com/hlissner/doom-emacs-private/blob/master/config.el

(setq user-full-name "François Brucker"
      user-mail-address "francois.brucker@gmail.com"

      doom-theme 'doom-dracula
      treemacs-width 32

)

;; locale and mac stuff
;;
;; alt is alt for mac
(setq-default mac-option-modifier nil)

;; french keyboard for avy keys
(setq avy-keys '(?q ?s ?d ?f ?g ?h ?j ?k ?l))
;;
;;; UI


;; "monospace" means use the system default.
(setq doom-font (font-spec :family "monospace" :size 14))


;; customization
(setq evil-snipe-scope 'buffer)
(setq avy-all-windows t)

;; windows arrow move

(map!
   :map evil-window-map
   :desc "go left"           "C-<left>" #'evil-window-left
   :desc "go right"           "C-<right>" #'evil-window-right
   :desc "go up"           "C-<up>" #'evil-window-up
   :desc "go down"           "C-<down>" #'evil-window-down
)
