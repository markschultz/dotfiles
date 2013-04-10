(custom-set-variables
  '(inhibit-startup-screen t))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(unless package-archive-contents (package-refresh-contents))
(package-initialize)

;; check if the package is installed; if not, install it.
;;(mapc
;;  (lambda (package)
;;    (or (package-installed-p package)
;;        (if (y-or-n-p (format "Package %s is missing. Install it? " package))
;;          (package-install package))))
;;  '(evil surround yasnippet fsharp-mode haskell-mode ghc))

;;(require 'fsharp-mode)

;;(require 'ghc)

;;(require 'evil)
(evil-mode 1)

;;(require 'surround)
(global-surround-mode 1)

;;(require 'yasnippet)
(yas-global-mode t)

(when (require 'auto-complete-config)
  (ac-config-default)
  (add-to-list 'ac-sources 'ac-source-yasnippet))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-to-list 'completion-ignored-extensions ".hi")
(global-auto-complete-mode 1)
