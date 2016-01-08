;;; gero-yasnippet.el --- Yasnippet configuration

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



(provide 'gero-yasnippet)
;;; gero-yasnippet.el ends here
