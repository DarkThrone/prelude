;;; gero-local.el --- Emacs persibak local intialization

;;; Commentary:
;;

;;; Code:
(defvar user-home (getenv "HOME"))

(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(global-set-key [?\M-`] 'other-frame)
(global-set-key (kbd "C-c c i d") 'crux-insert-date)

(setq default-frame-alist '((font . "Meslo LG M DZ-13")))
(setq prelude-whitespace nil)

;fix for linum mode
(require 'linum)
(global-linum-mode 1)

(find-file (concat user-home "/.emacs.d/personal/900-gero-local.el"))
(split-window-horizontally)
(find-file (concat user-home "/org-docs/daily-notes.org"))
;(toggle-frame-maximized)

(setq mouse-wheel-scroll-amount '(1
                                 ((shift) . 5)
                                 ((control))))

(global-set-key (kbd "M-S-<mouse-1>") 'mc/add-cursor-on-click)

(provide 'gero-local)
;;; gero-local.el ends here
