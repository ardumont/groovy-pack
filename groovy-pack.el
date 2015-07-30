;;; groovy-pack.el --- Groovy

;;; Commentary:

;;; Code:

(use-package smartscan)

(use-package groovy-mode
  :config
  ;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
  (add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
  (add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))
  (add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

  ;; make Groovy mode electric by default.
  ;; (add-hook 'groovy-mode-hook
  ;;           '(lambda ()
  ;;              (require 'groovy-electric)
  ;;              (groovy-electric-mode)))

  (add-hook 'groovy-mode-hook 'smartscan-mode))

(use-package font-core
  :config
  ;; turn on syntax highlighting
  (global-font-lock-mode 1))

(provide 'groovy-pack)
;;; groovy-pack.el ends here
