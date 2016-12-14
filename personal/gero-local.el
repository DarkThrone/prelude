;;; gero-local.el --- Emacs persibak local intialization

;;; Commentary:
;;

;;; Code:
(setq prelude-whitespace nil)

(global-linum-mode 1)

(find-file "/Users/gsgritta/.emacs.d/personal/gero-local.el")
(toggle-frame-maximized)
(split-window-horizontally)
(find-file "/Users/gsgritta/org-docs/daily-notes.org")

(setq mouse-wheel-scroll-amount '(1
                                 ((shift) . 5)
                                 ((control))))

(global-set-key (kbd "M-S-<mouse-1>") 'mc/add-cursor-on-click)

(provide 'gero-local)
;;; gero-local.el ends here
