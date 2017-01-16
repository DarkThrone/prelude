;;; gero-org-mode.el --- Gero configurations for org-mode

;;; Commentary:

;; Just installing org-bullets and activeting it

(require 'prelude-packages)

(prelude-require-package 'org-bullets)

(require 'org-bullets)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)
                                    (visual-line-mode 1)))

; This is to hide the solids from the emphasis markers
(setq org-hide-emphasis-markers t)

; Show inline images in org-mode
(setq org-startup-with-inline-images t)

;This is to change bullet style in lists
(font-lock-add-keywords 'org-mode
                        '(("^ +\\([-*]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

;Making org-mode headers nicer a cuter
(let* ((variable-tuple (cond ((x-list-fonts "Source Sans Pro") '(:font "Source Sans Pro"))
                             ((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
                             ((x-list-fonts "Verdana")         '(:font "Verdana"))
                             ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
                             (nil (warn "Cannot find a Sans Serif Font. Install Source Sans Pro"))))
       (base-font-color (face-foreground 'default nil 'default))
       (headline '(:inherit default :weight bold :foreground ,base-font-color)))
  
      (custom-theme-set-faces 'user
                          '(org-level-8 ((t (,@headline ,@variable-tuple))))
                          '(org-level-7 ((t (,@headline ,@variable-tuple))))
                          '(org-level-6 ((t (,@headline ,@variable-tuple))))
                          '(org-level-5 ((t (,@headline ,@variable-tuple))))
                          '(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
                          '(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
                          '(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
                          '(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
                          '(org-document-title ((t (,@headline ,@variable-tuple :height 1.5 :underline nil))))))

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
