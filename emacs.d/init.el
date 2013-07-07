(custom-set-variables
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
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
;;  '(evil surround yasnippet auto-complete fsharp-mode haskell-mode ghc))

(evil-mode 1)
(yas-global-mode t)
(ido-mode t)
(ido-everywhere t)
(ido-ubiquitous-mode 1)
(setq ido-enable-flex-matching t)
(setq tramp-default-method "ssh")
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

(when (require 'auto-complete-config)
  (ac-config-default)
  (add-to-list 'ac-sources 'ac-source-yasnippet))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-to-list 'completion-ignored-extensions ".hi")
(global-auto-complete-mode 1)

(require 'fsharp-mode)
(setq inferior-fsharp-program "/usr/local/bin/fsharpi --readline-")
(setq fsharp-compiler "/usr/local/bin/fsharpc")
(setq fsharp-ac-use-popup 1)
(setq fsharp-doc-idle-delay 1)
(setq fsharp-ac-intellisense-enabled 1)
(add-hook 'fsharp-mode-hook
          (lambda ()
            (define-key fsharp-mode-map (kbd "M-RET") 'fsharp-eval-region)
            (define-key fsharp-mode-map (kbd "M-C-i") 'completion-at-point)))
