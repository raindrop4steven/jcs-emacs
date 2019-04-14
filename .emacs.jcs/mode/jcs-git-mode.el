;;; jcs-git-mode.el --- Git related modes. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(require 'gitattributes-mode)
(defun jcs-gitattributes-mode-hook ()
  "Gitattributes mode hook."
  (electric-pair-mode nil)
  (goto-address-mode 1)
  (auto-highlight-symbol-mode t)

  ;; Normal
  (define-key gitattributes-mode-map (kbd "<up>") 'previous-line)
  (define-key gitattributes-mode-map (kbd "<down>") 'next-line)
  (define-key gitattributes-mode-map (kbd "C-d") 'jcs-kill-whole-line)
  (define-key gitattributes-mode-map "\C-c\C-c" 'kill-ring-save)
  (define-key gitattributes-mode-map (kbd "<up>") 'previous-line)
  (define-key gitattributes-mode-map (kbd "<down>") 'next-line)
  )
(add-hook 'gitattributes-mode-hook 'jcs-gitattributes-mode-hook)



(require 'gitconfig-mode)
(defun jcs-gitconfig-mode-hook ()
  "Gitconfig mode hook."
  (electric-pair-mode nil)
  (goto-address-mode 1)
  (auto-highlight-symbol-mode t)

  ;; Normal
  (define-key gitconfig-mode-map (kbd "<up>") 'previous-line)
  (define-key gitconfig-mode-map (kbd "<down>") 'next-line)
  (define-key gitconfig-mode-map (kbd "C-d") 'jcs-kill-whole-line)
  (define-key gitconfig-mode-map "\C-c\C-c" 'kill-ring-save)
  (define-key gitconfig-mode-map (kbd "<up>") 'previous-line)
  (define-key gitconfig-mode-map (kbd "<down>") 'next-line)
  )
(add-hook 'gitconfig-mode-hook 'jcs-gitconfig-mode-hook)



(require 'gitignore-mode)
(defun jcs-gitignore-mode-hook ()
  "Gitignore mode hook."
  (electric-pair-mode nil)
  (goto-address-mode 1)
  (auto-highlight-symbol-mode t)

  ;; Normal
  (define-key gitignore-mode-map (kbd "<up>") 'previous-line)
  (define-key gitignore-mode-map (kbd "<down>") 'next-line)
  (define-key gitignore-mode-map (kbd "C-d") 'jcs-kill-whole-line)
  (define-key gitignore-mode-map "\C-c\C-c" 'kill-ring-save)
  (define-key gitignore-mode-map (kbd "<up>") 'previous-line)
  (define-key gitignore-mode-map (kbd "<down>") 'next-line)
  )
(add-hook 'gitignore-mode-hook 'jcs-gitignore-mode-hook)


(provide 'jcs-git-mode)
;;; jcs-git-mode.el ends here