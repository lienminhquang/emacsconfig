(require 'package) ;; Emacs builtin

;; set package.el repositories
(setq package-archives
'(
   ("org" . "https://orgmode.org/elpa/")
   ("gnu" . "https://elpa.gnu.org/packages/")
   ("melpa" . "https://melpa.org/packages/")
))

;; initialize built-in package management
(package-initialize)

;; update packages list if we are on a new install
(unless package-archive-contents
  (package-refresh-contents))

;; a list of pkgs to programmatically install
;; ensure installed via package.el
(setq my-package-list '(use-package))

;; programmatically install/ensure installed
;; pkgs in your personal list
(dolist (package my-package-list)
  (unless (package-installed-p package)
    (package-install package)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7d3c22104bbd151e0be853a98ddaafe085d1f538508e920f8669003486ac92d6" default)))
 '(package-selected-packages
   (quote
    (flycheck-irony ace-window company-irony company nyan-mode sublimity avy swiper ggtags use-package flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight bold :height 102 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

;; theme
(load-theme 'zenburn t)

;;flycheck
;; (use-package flycheck
;;   :config
;;   (global-flycheck-mode)
;;   (setq flycheck-check-syntax-automatically '(mode-enabled save))
;;   )
;; (eval-after-load 'flycheck
;;   '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;;display line numbers
(global-display-line-numbers-mode 1)

(use-package ggtags
  :config
  (add-hook 'c-mode-common-hook
	    (lambda()
	      (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
		(ggtags-mode 1))))
  )
(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)

;; Ace-window
(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))




;; search
(use-package counsel
  :ensure t
  )

(use-package ivy
  :ensure t
  )

(use-package swiper
  :ensure t
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    ;; enable this if you want `swiper' to use it
    ;; (setq search-default-mode #'char-fold-to-regexp)
    (global-set-key "\C-s" 'swiper)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "<f6>") 'ivy-resume)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> l") 'counsel-find-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    ;;(global-set-key (kbd "C-c g") 'counsel-git)
    (global-set-key (kbd "C-c j") 'counsel-git-grep)
    (global-set-key (kbd "C-c k") 'counsel-ag)
    (global-set-key (kbd "C-x l") 'counsel-locate)
    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    ))

(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))



;;auto complete code

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  
  (global-company-mode t)
  )

(use-package company-irony
  :ensure t
  :config
  (add-to-list 'company-backends 'company-irony)
  )

(use-package irony
  :ensure t
  :config
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  )

;; Windows performance tweaks
;;
(when (boundp 'w32-pipe-read-delay)
  (setq w32-pipe-read-delay 0))
;; Set the buffer size to 64K on Windows (from the original 4K)
(when (boundp 'w32-pipe-buffer-size)
  (setq irony-server-w32-pipe-buffer-size (* 64 1024)))


;; Dum jump
;; (use-package dumb-jump
;;   :bind (("M-g o" . dumb-jump-go-other-window)
;;          ("M-g j" . dumb-jump-go)
;;          ("M-g b" . dumb-jump-back)
;;          ("M-g i" . dumb-jump-go-prompt)
;;          ("M-g x" . dumb-jump-go-prefer-external)
;;          ("M-g z" . dumb-jump-go-prefer-external-other-window))
;;   :config (setq dumb-jump-selector 'ivy) ;; (setq dumb-jump-selector 'helm)
;;   :ensure
;;   :init
;;   (dumb-jump-mode)
;;   :ensure
;;   )

;;Compile
(setq compile-command "call \"C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/Common7/Tools/VsDevCmd.bat\" & devenv  ")

;;DEBUGING
(setq
 ;;use many debugwindow by default
 gdb-many-windows t
 ;;non nil mean display source file contain main routine at start up
 gdb-show-main t
 )


;; Turn off menubar, toolbar, scollbar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Smooth Scrolling
(use-package sublimity
  :config
  (require 'sublimity-scroll)
  ;;(require 'sublimity-map)
  (require 'sublimity-attractive)
  (sublimity-mode 1)
  )

;; NyanCat on Modeline as an analog indicator of your position in the buffer
(use-package nyan-mode
  :config
  (nyan-mode)
;;  (nyan-animate-nyancat t)
  )


;; Display directory tree view on the left side
;;(use-package all-the-icons)
;;(use-package neotree
;;  :config (progn
;;	    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
;;  :bind ("C-x n o" . neotree-toggle))


;;;


