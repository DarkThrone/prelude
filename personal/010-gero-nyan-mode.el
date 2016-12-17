;;; gero-nyan-mode.el --- Gero configurations for nyan-mode

;;; Commentary:

;; Just installing nyan-mode and activeting it

(require 'prelude-packages)

(prelude-require-package 'nyan-mode)

(require 'nyan-mode)

(nyan-mode 1)

;; Now let's set the wavy trail, and start nyan animations!
(setq nyan-wavy-trail t)
(setq nyan-animation-frame-interval 0.16)
(nyan-start-animation)

(provide 'gero-nyan-mode)

;;; gero-nyan-mode.el ends here
