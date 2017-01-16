;;; gero-rust-mode.el --- Emacs persibak local intialization

;;; Commentary:
;;

;;; Code:
(require 'prelude-packages)

(prelude-require-package 'rust-mode)
(prelude-require-package 'racer)
(prelude-require-package 'flycheck-rust)
(prelude-require-package 'cargo)
(prelude-require-package 'ggtags)

(require 'company)
(require 'racer)
(require 'rust-mode)
(require 'electric)
(require 'eldoc)
(require 'flycheck)
(require 'flycheck-rust)
(require 'ggtags)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook  #'racer-mode)
(add-hook 'racer-mode-hook  #'company-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'rust-mode-hook #'cargo-minor-mode)

(add-hook 'rust-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))

;;; Install GNU Global
;;;
;;;brew install global --with-ctags --with-pygments
;;;
;;; Copy contents from https://github.com/rust-lang/rust/blob/master/src/etc/ctags.rust to `~/.ctags`
;;;
;;;curl https://raw.githubusercontent.com/rust-lang/rust/master/src/etc/ctags.rust
;;;
;;; Install `ggtags` for emacs
;;; Profit.

(add-hook 'prog-mode-hook
          '(lambda ()
             (when (derived-mode-p 'rust-mode)
               (ggtags-mode 1))))

(provide 'gero-rust-mode)
;;; 080-gero-rust-mode.el ends here
