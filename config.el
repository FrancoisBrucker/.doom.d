;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; heavily used as inspiration :
;; https://github.com/hlissner/doom-emacs-private/blob/master/config.el

(setq user-full-name "François Brucker"
      user-mail-address "francois.brucker@gmail.com"

      doom-theme 'doom-nord-light
      doom-font (font-spec :family "monaco" :size 14)

      treemacs-width 32
)

;; auto save file
(auto-save-visited-mode +1)
(setq auto-save-file-name t)

;; locale
;;

;; mac keyboard
(when (eq system-type 'darwin)
  (setq mac-option-modifier nil ;; alt is alt for mac
        ;; ns-function-modifier 'super
        mac-right-command-modifier 'meta
        ;; mac-right-option-modifier 'hyper
        mac-command-modifier 'super
))

;; french keyboard for avy keys
(setq avy-keys '(?q ?s ?d ?f ?g ?h ?j ?k ?l))


;;  avy and snipe
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

;; diff init.el
(defun doom/ediff-init-and-example ()
  "ediff the current `init.el' with the example in doom-emacs-dir"
  (interactive)
  (ediff-files (concat doom-private-dir "init.el")
               (concat doom-emacs-dir "init.example.el")))

(define-key! help-map
  "di"   #'doom/ediff-init-and-example
  )

;; Notes

(setq deft-directory "~/Documents/Commun/org/")

;;; :lang org
(setq org-directory "~/Documents/Commun/org/"
      org-agenda-files '("~/Documents/Commun/org/")
      ;; org-archive-location (concat org-directory ".archive/%s::")
      ;; org-roam-directory (concat org-directory "notes/")
      ;; org-journal-encrypt-journal t
      org-journal-file-format "%Y%m%d.org"
)
