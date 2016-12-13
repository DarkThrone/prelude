;;; gero-origami-mode.el --- Emacs prelude local intialization

;;; Commentary:
;; 

;;; Code:

(prelude-require-package 'origami)

(require 'origami)

;; Let's define some keys first

(eval-after-load 'origami-mode
  '(progn
     (defun gero-origami-mode-defaults ()
       ;; add to origami-mode-map
       (let ((map origami-mode-map))
         (define-key map (kbd "C-c @ C-s") 'origami-open-node)
         (define-key map (kbd "C-c @ C-h") 'origami-close-node)
         (define-key map (kbd "C-+") 'origami-toggle-node)))

     (setq gero-origami-mode-hook 'gero-origami-mode-defaults)

     (add-hook 'origami-mode (lambda ()
                               (run-hooks 'gero-origami-mode-hook)))))

(provide 'gero-origami-mode)
;;; gero-origami-mode.el ends here
