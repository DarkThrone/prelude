;;; gero-org-mode.el --- Gero configurations for org-mode

;;; Commentary:

;; Just installing org-bullets and activeting it

(require 'prelude-packages)

(prelude-require-package 'org-bullets)

(require 'org-bullets)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'gero-org-mode)

;;; gero-org-mode.el ends here
