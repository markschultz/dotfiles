(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("8f843e5541f51fe3072543d7f666355534c4341e05cea61c5085cebcb181f5ef" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(frame-background-mode (quote dark))
 '(inhibit-startup-screen t))

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(add-to-list 'custom-theme-load-path "~/.emacs.d/solarized/")
;;(load-theme 'solarized t)
(evil-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

(load (f-expand "my-haskell-mode-settings.el" user-emacs-directory))

(set-input-mode t nil t)
