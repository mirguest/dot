(add-to-list 'load-path "~/.emacs.d/")

(require 'cmake-mode)
(require 'saveplace)

(if window-system
    (progn
        (set-face-attribute 'default nil :height 120)
        (menu-bar-mode 1))
    (menu-bar-mode -1))


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(frame-background-mode (quote light))
 '(indent-tabs-mode nil)
 '(save-place t nil (saveplace))
 '(save-place-file "~/.emacs.d/places")
 '(savehist-mode t nil (savehist))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
