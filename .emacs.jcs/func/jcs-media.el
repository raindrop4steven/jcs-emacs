;;; jcs-media.el --- Process media, like audio/video.  -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(require 'ffmpeg-player)


(defun jcs-media--open-media-window ()
  "Open the media window."
  (when ffmpeg-player--buffer
    (when (window-full-height-p) (jcs-balance-split-window-vertically))
    (buf-move-down)))

(defun jcs-media-close-media-window ()
  "Close the media window."
  (interactive)
  (when (ignore-errors (jcs-jump-shown-to-buffer "[*]ffmpeg-player[*]: "))
    (let ((bot-window nil))
      (save-selected-window (windmove-down) (setq bot-window (selected-window)))
      (when (jcs-maybe-kill-this-buffer) (jcs-delete-window-downwind))
      (select-window bot-window))
    (balance-windows)))


(provide 'jcs-media)
;;; jcs-media.el ends here