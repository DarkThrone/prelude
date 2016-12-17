;;; gero-local.el --- Emacs persibak local intialization

;;; Commentary:
;;

;;; Code:
(defvar user-home (getenv "HOME"))

(setq default-frame-alist '((font . "Meslo LG M DZ-13")))
(setq prelude-whitespace nil)

;fix for linum mode
(require 'linum)
(defun linum-update-window-scale-fix (win)
  "fix linum for scaled text"
  (set-window-margins win
                      (ceiling (* (if (boundp 'text-scale-mode-step)
                                      (expt text-scale-mode-step
                                            text-scale-mode-amount) 1)
                                  (if (car (window-margins))
                                      (car (window-margins)) 1)
                                  ))))
(advice-add #'linum-update-window :after #'linum-update-window-scale-fix)

(global-linum-mode 1)

(find-file (concat user-home "/.emacs.d/personal/900-gero-local.el"))
(toggle-frame-maximized)
(split-window-horizontally)
(find-file (concat user-home "/org-docs/daily-notes.org"))

(setq mouse-wheel-scroll-amount '(1
                                 ((shift) . 5)
                                 ((control))))

(global-set-key (kbd "M-S-<mouse-1>") 'mc/add-cursor-on-click)

(provide 'gero-local)
;;; gero-local.el ends here
