;;; gero-local.el --- Emacs persibak local intialization

;;; Commentary:
;;

;;; Code:
(setq prelude-whitespace nil)

(toggle-frame-maximized)
(split-window-horizontally)

(setq mouse-wheel-scroll-amount '(1
                                 ((shift) . 5)
                                 ((control))))

(provide 'gero-local)
;;; gero-local.el ends here
