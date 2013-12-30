(custom-set-variables
 ;; custom-set-variables was added by Custom.
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(inhibit-startup-screen t))

(require 'cask "~/git/cask/cask.el")
(cask-initialize)
;;  '(evil surround yasnippet auto-complete fsharp-mode haskell-mode ghc))

(evil-mode 1)
(yas-global-mode 1)
(require 'ac-dabbrev)
(when (require 'auto-complete-config)
  (ac-config-default)
  (add-to-list 'ac-sources 'ac-source-yasnippet 'ac-source-dabbrev))
(global-auto-complete-mode 1)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-to-list 'completion-ignored-extensions ".hi")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 )
