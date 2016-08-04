;;; prelude-emmet.el --- Emacs prelude Emmet configuration

;;; Commentary:
;; This is the emmet file

;;; Code:
(require 'prelude-packages)

(prelude-require-packages '(emmet-mode multiple-cursors))

(require 'emmet-mode)
(require 'multiple-cursors)

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 4)

(setq web-mode-enable-auto-closing t)
(setq web-mode-enable-auto-opening t)
(setq web-mode-enable-auto-indentation t)

;; Use multiple-cursors to rename tags
(define-key web-mode-map (kbd "C-c C-r") 'mc/mark-sgml-tag-pair)

;; Disable over zealous pairing
(setq web-mode-enable-auto-pairing t)

(defun setup-emmet (map hook)
  "Setup emmet key bindings for MAP and HOOK."
  (add-hook hook 'emmet-mode)
  (define-key map (kbd "C-c .") 'emmet-next-edit-point)
  (define-key map (kbd "C-c ,") 'emmet-prev-edit-point)
  (define-key map (kbd "C-c j") 'emmet-expand-line))

(setup-emmet web-mode-map 'web-mode-hook)

(define-key emmet-mode-keymap (kbd "C-j") nil)
(setq emmet-move-cursor-between-quotes t)
(setq emmet-move-cursor-after-expanding t)



(provide 'prelude-emmet)
;;; prelude-emmet.el ends here
