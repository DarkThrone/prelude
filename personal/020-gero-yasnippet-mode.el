;;; gero-yasnippet-mode.el --- Yasnippet configuration

;;; Commentary:

;;; Code:

(require 'prelude-packages)

(prelude-require-package 'yasnippet)

(require 'yasnippet)

;; personal snippets
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))

(yas-reload-all)
(add-hook 'org-mode-hook 'yas-minor-mode)

(provide 'gero-yasnippet-mode)
;;; gero-yasnippet-mode.el ends here
