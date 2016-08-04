;;; prelude-local.el --- Emacs prelude local intialization

;;; Commentary:
;; 

;;; Code:

(prelude-require-package 'origami)

(require 'origami)

;; Let's define some keys first

(eval-after-load 'origami-mode
  '(progn
     (defun prelude-origami-mode-defaults ()
       ;; add to origami-mode-map
       (let ((map origami-mode-map))
         (define-key map (kbd "C-c @ C-s") 'origami-open-node)
         (define-key map (kbd "C-c @ C-h") 'origami-close-node)
         (define-key map (kbd "C-+") 'origami-toggle-node)))

     (setq prelude-origami-mode-hook 'prelude-origami-mode-defaults)

     (add-hook 'origami-mode (lambda ()
                               (run-hooks 'prelude-origami-mode-hook)))))

(provide 'prelude-origami)
;;; prelude-origami.el ends here
