;;; prelude-local.el --- Emacs prelude local intialization

;;; Commentary:
;; 

;;; Code:

(prelude-require-packages '(yasnippet
                            nyan-mode
                            org-bullets
                            neotree
                            color-theme-sanityinc-solarized
                            origami))

;; Let's enable nyan mode for all the files
(nyan-mode 1)
(yas-global-mode 1)

;; Now let's set the wavy trail, and start nyan animations!
(setq nyan-wavy-trail t)
(setq nyan-animation-frame-interval 0.16)
(nyan-start-animation)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq prelude-whitespace nil)

(toggle-frame-maximized)
(split-window-horizontally)

(setq mouse-wheel-scroll-amount '(1
                                 ((shift) . 5)
                                 ((control))))

;; Babel
(setq org-fontify-done-headline t)
(setq org-src-fontify-natively t)
(setq org-confirm-babel-evaluate nil)
(setq org-src-window-setup 'current-window)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (sh         . t)
   (java       . t)
   (js         . t)
   (ruby       . t)
   (python     . t)))

(add-to-list 'org-babel-tangle-lang-exts '("js"      . "js"))



(provide 'prelude-local)
;;; prelude-local.el ends here
