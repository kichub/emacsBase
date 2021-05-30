(add-to-list 'default-frame-alist '(fullscreen . fullscreen))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(deeper-blue))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages '(yasnippet company csv-mode))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro for Powerline" :weight bold :height 143 :foundry "outline" :slant italic :width normal)))))


(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq inhibit-startup-message t)
(setq company--auto-completion t)
(add-hook 'csv-mode-hook
          (lambda ()
            (font-lock-add-keywords nil '(("^\\([^,]*\\)," 1 'font-lock-function-name-face)))))
(add-hook 'after-init-hook 'global-company-mode)

(defun refresh-file ()
  (interactive)
  (revert-buffer t (not (buffer-modified-p)) t))
(global-set-key [(control f5)] 'refresh-file)
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :name "kaiti")))

	(setq tramp-ssh-controlmaster-options
		  "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
    (setq configuration-layer-elpa-archives
       '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
        ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))


