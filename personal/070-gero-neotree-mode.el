;;; gero-neotree-mode.el --- Emacs persibak local intialization

;;; Commentary:
;;

;;; Code:
(require 'prelude-packages)

(prelude-require-package 'neotree)

(setq neo-smart-open t)

(global-set-key [f8] 'neotree-toggle)


(provide 'gero-neotree-mode)
;;; 070-gero-neotree-mode.el ends here
