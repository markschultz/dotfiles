(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(inhibit-startup-screen t))

(require 'cask "~/git/cask/cask.el")
(cask-initialize)

(evil-mode 1)
(yas-global-mode 1)
(add-hook 'text-mode-hook 'flyspell-mode)
(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(setq ido-enable-flex-matching t)
(flx-ido-mode 1)
(menu-bar-mode -1)
(require 'smartparens-config)
(smex-initialize)
(require 'undo-tree)
(global-undo-tree-mode)
(global-auto-revert-mode t)
(global-linum-mode t)
(setq linum-format "%d ")
(global-rainbow-delimiters-mode)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'execute-extended-command)
(setq backup-directory-alist
    `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
    `((".*" ,temporary-file-directory t)))
(require 'ack-and-a-half)
;; Create shorter aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(pending-delete-mode t)
(require 'emmet-mode)
(require 'ac-dabbrev)
(autopair-global-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
(load (f-expand "flycheck-ghcmod.el" user-emacs-directory))
(load (f-expand "my-haskell-mode-settings.el" user-emacs-directory))
(eval-after-load 'flycheck
  '(require 'flycheck-ghcmod))
(when (require 'auto-complete-config)
  (ac-config-default)
  (add-to-list 'ac-sources 'ac-source-yasnippet 'ac-source-dabbrev))
(global-auto-complete-mode 1)
(add-to-list 'completion-ignored-extensions ".hi")
(setq gc-cons-threshold 20000000)
(require 'fsharp-mode)
(setq inferior-fsharp-program "/usr/local/bin/fsharpi --readline-")
(setq fsharp-compiler "/usr/local/bin/fsharpc")
(setq fsharp-ac-use-popup 1)
(setq fsharp-doc-idle-delay 1)
(setq fsharp-ac-intellisense-enabled 1)
(show-paren-mode 1)
(setq x-select-enable-primary t)
(setq x-select-enable-clipboard t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
