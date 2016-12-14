;;; gero-org-mode.el --- Gero configurations for org-mode

;;; Commentary:

;; Just installing org-bullets and activeting it

(require 'prelude-packages)

(prelude-require-package 'org-bullets)

(require 'org-bullets)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Babel
(setq org-fontify-done-headline t)
(setq org-src-fontify-natively t)
(setq org-confirm-babel-evaluate nil)
(setq org-src-window-setup 'current-window)
(setq org-plantuml-jar-path
      (expand-file-name "~/.emacs.d/vendor/plantuml.jar"))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (sh         . t)
   (java       . t)
   (js         . t)
   (ruby       . t)
   (python     . t)
   (plantuml   . t)))

(add-to-list 'org-babel-tangle-lang-exts '("js"      . "js"))

(provide 'gero-org-mode)

;;; gero-org-mode.el ends here
