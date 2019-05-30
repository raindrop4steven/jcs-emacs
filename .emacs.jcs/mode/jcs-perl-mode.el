;;; jcs-perl-mode.el --- Perl mode. -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(defun jcs-perl-script-format ()
  "Format the given file as a Perl file."
  (when (jcs-is-current-file-empty-p)
    (jcs-insert-perl-template)))

(require 'perl-mode)
(defun jcs-perl-mode-hook ()
  "Perl mode hook."
  (abbrev-mode 1)
  (goto-address-mode 1)
  (auto-highlight-symbol-mode t)

  ;; TOPIC: Treat underscore as word.
  ;; URL: https://emacs.stackexchange.com/questions/9583/how-to-treat-underscore-as-part-of-the-word
  (modify-syntax-entry ?_ "w")

  (when buffer-file-name
    (cond ((file-exists-p buffer-file-name) t)
          ((string-match "[.]pl" buffer-file-name) (jcs-perl-script-format))
          ))

  ;; Normal
  (define-key perl-mode-map (kbd "C-d") #'jcs-kill-whole-line)
  (define-key perl-mode-map "\C-c\C-c" #'kill-ring-save)

  (define-key perl-mode-map (kbd "DEL") #'jcs-electric-backspace)
  (define-key perl-mode-map (kbd "{") #'jcs-vs-front-curly-bracket-key)
  (define-key perl-mode-map (kbd ";") #'jcs-vs-semicolon-key)
  )
(add-hook 'perl-mode-hook 'jcs-perl-mode-hook)


(provide 'jcs-perl-mode)
;;; jcs-perl-mode.el ends here
