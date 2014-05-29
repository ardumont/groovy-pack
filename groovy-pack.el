;;; groovy-pack.el --- Groovy

;;; Commentary:

;;; Code:

(require 'install-packages-pack)
(install-packs '(groovy-mode
                 smartscan))

(require 'groovy-mode)

;;; turn on syntax highlighting
(global-font-lock-mode 1)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

(require 'smartscan)
(add-hook 'groovy-mode-hook (lambda () (smartscan-mode)))

;;; make Groovy mode electric by default.
;; (add-hook 'groovy-mode-hook
;;           '(lambda ()
;;              (require 'groovy-electric)
;;              (groovy-electric-mode)))

(provide 'groovy-pack)
;;; groovy-pack.el ends here
