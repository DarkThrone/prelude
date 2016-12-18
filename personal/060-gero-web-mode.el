;;; gero-weg-mode.el --- Emacs persibak local intialization

;;; Commentary:
;;

;;; Code:
(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))

(setq web-mode-content-types-alist
      '(("jsx"  . "/some/react/path/.*\\.js[x]?\\'")))

(provide 'gero-web-mode)
;;; gero-web-mode.el ends here
