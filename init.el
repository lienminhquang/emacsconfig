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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
	("76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "7d3c22104bbd151e0be853a98ddaafe085d1f538508e920f8669003486ac92d6" default)))
 '(fci-rule-color "#37474F")
 '(flycheck-python-pycompile-executable
   "C:\\Users\\84961\\AppData\\Local\\Programs\\Python\\Python37-32\\python.exe")
 '(global-display-line-numbers-mode t)
 '(grep-find-template
   "find_gnu <D> <X> -type f <F> -exec grep <C> -nH --null <R> \"{}\" \";\"")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
	(("#3C3D37" . 0)
	 ("#679A01" . 20)
	 ("#4BBEAE" . 30)
	 ("#1DB4D0" . 50)
	 ("#9A8F21" . 60)
	 ("#A75B00" . 70)
	 ("#F309DF" . 85)
	 ("#3C3D37" . 100))))
 '(jdee-db-active-breakpoint-face-colors (cons "#171F24" "#237AD3"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#171F24" "#579C4C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#171F24" "#777778"))
 '(jdee-jdk (quote ("11")))
 '(jdee-jdk-registry
   (quote
	(("11" . "c:/Program Files/AdoptOpenJDK/jdk-11.0.9.101-hotspot/bin"))))
 '(lsp-dart-flutter-widget-guides nil)
 '(lsp-dart-server-command (quote ("dart_language_server")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
	("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(objed-cursor-color "#D16969")
 '(package-selected-packages
   (quote
	(groovy-mode treemacs counsel-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil treemacs-projectile lsp-mode flutter lsp-ui projectile lsp-dart company-irony-c-headers doom-themes flycheck-irony ace-window company-irony company nyan-mode sublimity avy swiper ggtags use-package flycheck)))
 '(pdf-view-midnight-colors (cons "#d4d4d4" "#1e1e1e"))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(rustic-ansi-faces
   ["#1e1e1e" "#D16969" "#579C4C" "#D7BA7D" "#339CDB" "#C586C0" "#85DDFF" "#d4d4d4"])
 '(shell-file-name
   "E:/Libs/emacs-26.3-x86_64/libexec/emacs/26.3/x86_64-w64-mingw32/cmdproxy.exe")
 '(show-paren-mode t)
 '(treemacs-python-executable
   "C:\\Users\\84961\\AppData\\Local\\Programs\\Python\\Python37-32\\python.exe")
 '(vc-annotate-background "#1e1e1e")
 '(vc-annotate-color-map
   (list
	(cons 20 "#579C4C")
	(cons 40 "#81a65c")
	(cons 60 "#acb06c")
	(cons 80 "#D7BA7D")
	(cons 100 "#d8ab79")
	(cons 120 "#d99c76")
	(cons 140 "#DB8E73")
	(cons 160 "#d38b8c")
	(cons 180 "#cc88a6")
	(cons 200 "#C586C0")
	(cons 220 "#c97ca3")
	(cons 240 "#cd7286")
	(cons 260 "#D16969")
	(cons 280 "#ba6c6c")
	(cons 300 "#a37070")
	(cons 320 "#8d7374")
	(cons 340 "#37474F")
	(cons 360 "#37474F")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
	(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 102 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))

;; theme
;;(load-theme 'vscode-dark-plus t)
;;(load-theme 'doom-dark+ t)
;;(load-theme 'monokai t)
;;(load-theme 'wheatgrass' t)
;;flycheck
(use-package flycheck
  :config
  (global-flycheck-mode)
  (setq flycheck-check-syntax-automatically '(mode-enabled save))
  )
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;;; On Windows, commands run by flycheck may have CRs (\r\n line endings).
;;; Strip them out before parsing.
(defun flycheck-parse-output (output checker buffer)
  "Parse OUTPUT from CHECKER in BUFFER.

OUTPUT is a string with the output from the checker symbol
CHECKER.  BUFFER is the buffer which was checked.

Return the errors parsed with the error patterns of CHECKER."
  (let ((sanitized-output (replace-regexp-in-string "\r" "" output))
        )
    (funcall (flycheck-checker-get checker 'error-parser) sanitized-output checker buffer))
  )

(setq-default tab-width 4)  
(setq c-default-style "linux"
          c-basic-offset 4)

;;display line numbers
(global-display-line-numbers-mode 1)
(setq column-number-mode t)

;;(use-package doom-modeline
;;  :ensure t
;;  :init (doom-modeline-mode 1))

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
;;(use-package ace-window
;;  :ensure t
;;  :init
;;  (progn
;;    (global-set-key [remap other-window] 'ace-window)
;;    (custom-set-faces
;;     '(aw-leading-char-face
;;       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
;;    ))

;; default frame size
(when (or window-system (daemonp))
  (setq default-frame-alist '(
                              (width . 200)
                              (height . 55)
 ))
		)
;; default split window
(split-window-horizontally)

(global-hi-lock-mode 1)

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
;;(setq compile-command "call \"C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/Common7/Tools/VsDevCmd.bat\" & devenv  ")

;;DEBUGING
(setq
 ;;use many debugwindow by default
 gdb-many-windows t
 ;;non nil mean display source file contain main routine at start up
 gdb-show-main t
 )

;; set tab lenght
;;(setq-default tab-width 1)

;; Turn off menubar, toolbar, scollbar
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq horizontal-scroll-bar-mode t)

;; Set default font size
(set-face-attribute 'default nil :height 130)
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

;; NyanCat on Modeline as an analog indicator of your position in the buffer
(use-package nyan-mode
  :config
  (nyan-mode)
;;  (nyan-animate-nyancat t)
  )

(setq backup-directory-alist
	  `(("." . ,(concat user-emacs-directory "backups"))))



;; Display paren (highlight matching brackets)
(show-paren-mode 1)
(setq show-paren-delay 0)

;; commnet/uncomment block of code
(defun xah-comment-dwim ()
  "Like `comment-dwim', but toggle comment if cursor is not at end of line."
  (interactive)
  (if (region-active-p)
      (comment-dwim nil)
    (let ((-lbp (line-beginning-position))
          (-lep (line-end-position)))
      (if (eq -lbp -lep)
          (progn
            (comment-dwim nil))
        (if (eq (point) -lep)
            (progn
              (comment-dwim nil))
          (progn
            ;; (comment-or-uncomment-region -lbp -lep)
            (forward-line )))))))
(global-set-key (kbd "C-c c") 'xah-comment-dwim)

;;auto revert buffer
(global-auto-revert-mode t)

(beacon-mode 1)

;;using Cygwin bash as the default shell for emacs
(defun my-shell-setup ()
  "For Cygwin bash under Emacs 20"
  (setq comint-scroll-show-maximum-output 'this)
  (make-variable-buffer-local 'comint-completion-addsuffix))
(setq comint-completion-addsuffix t)
;; (setq comint-process-echoes t) ;; reported that this is no longer needed
(setq comint-eol-on-send t)
(setq w32-quote-process-args ?\")

(add-hook 'shell-mode-hook 'my-shell-setup)

;; projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; 
(defcustom projectile-se-command (concat (concat "es -regex \"$/\" -path " projectile-project-root) "| tr '\\n' '\\0'")
  "Command used by projectile to get the files in a svn project."
  :group 'projectile
  :type 'string)

(defun projectile-get-ext-command (vcs)
  "Determine which external command to invoke based on the project's VCS.
Fallback to a generic command when not in a VCS-controlled project."
  (pcase vcs
    (_ projectile-se-command)))

;; which-key
(require 'which-key)
(which-key-mode)
(which-key-setup-side-window-bottom)

;; projectile
(use-package projectile
:ensure t
:config
(projectile-global-mode)
(setq projectile-completion-system 'ivy))

(use-package counsel-projectile
:ensure t
:config
(counsel-projectile-mode))


;; Smooth scroll
(setq scroll-step 3)

; C++ indentation style
(defconst casey-big-fun-c-style
  '((c-electric-pound-behavior   . nil)
    (c-tab-always-indent         . t)
    (c-comment-only-line-offset  . 0)
    (c-hanging-braces-alist      . ((class-open)
                                    (class-close)
                                    (defun-open)
                                    (defun-close)
                                    (inline-open)
                                    (inline-close)
                                    (brace-list-open)
                                    (brace-list-close)
                                    (brace-list-intro)
                                    (brace-list-entry)
                                    (block-open)
                                    (block-close)
                                    (substatement-open)
                                    (statement-case-open)
                                    (class-open)))
    (c-hanging-colons-alist      . ((inher-intro)
                                    (case-label)
                                    (label)
                                    (access-label)
                                    (access-key)
                                    (member-init-intro)))
    (c-cleanup-list              . (scope-operator
                                    list-close-comma
                                    defun-close-semi))
    (c-offsets-alist             . ((arglist-close         .  c-lineup-arglist)
                                    (label                 . -4)
                                    (access-label          . -4)
                                    (substatement-open     .  0)
                                    (statement-case-intro  .  4)
                                    (statement-block-intro .  c-lineup-for)
                                    (case-label            .  4)
                                    (block-open            .  0)
                                    (inline-open           .  0)
                                    (topmost-intro-cont    .  0)
                                    (knr-argdecl-intro     . -4)
                                    (brace-list-open       .  0)
                                    (brace-list-intro      .  4)))
    (c-echo-syntactic-information-p . t))
    "Casey's Big Fun C++ Style")
;;;
; CC++ mode handling
(defun casey-big-fun-c-hook ()
  ; Set my style for the current buffer
  (c-add-style "BigFun" casey-big-fun-c-style t)
  
  ; 4-space tabs
  (setq tab-width 4
        indent-tabs-mode nil)

  ; Additional style stuff
  (c-set-offset 'member-init-intro '++)

  ; No hungry backspace
  (c-toggle-auto-hungry-state -1)

  ; Newline indents, semi-colon doesn't
  (define-key c++-mode-map "\C-m" 'newline-and-indent)
  (setq c-hanging-semi&comma-criteria '((lambda () 'stop)))

  ; Handle super-tabbify (TAB completes, shift-TAB actually tabs)
  (setq dabbrev-case-replace t)
  (setq dabbrev-case-fold-search t)
  (setq dabbrev-upcase-means-case-search t)

  ; Abbrevation expansion
  (abbrev-mode 1)
  )
(add-hook 'c-mode-common-hook 'casey-big-fun-c-hook)

; Don't wrap lines
(set-default 'truncate-lines t)

;; Tab indents
  ; 4-space tabs
  (setq tab-width 4
        indent-tabs-mode nil)

(add-to-list 'load-path "~/.emacs.d/jdee-20191102.1426")
(load "jdee")
;;;

