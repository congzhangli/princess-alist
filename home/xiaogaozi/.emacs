;; ----------------------------------------------------------------------
;; CUSTOMIZATION SETTINGS
;; ----------------------------------------------------------------------

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-output-view-style (quote (("^dvi$nnnnnnn" ("^landscape$" "^pstricks$\\|^pst-\\|^psfrag$") "%(o?)dvips -t landscape %d -o && gv %f") ("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "%(o?)dvips %d -o && gv %f") ("^dvi$" ("^a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4$" "^landscape$") "%(o?)xdvi %dS -paper a4r -s 0 %d") ("^dvi$" "^a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4$" "%(o?)xdvi %dS -paper a4 %d") ("^dvi$" ("^a5\\(?:comb\\|paper\\)$" "^landscape$") "%(o?)xdvi %dS -paper a5r -s 0 %d") ("^dvi$" "^a5\\(?:comb\\|paper\\)$" "%(o?)xdvi %dS -paper a5 %d") ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d") ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper us %d") ("^dvi$" "^legalpaper$" "%(o?)xdvi %dS -paper legal %d") ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d") ("^dvi$" "." "%(o?)xdvi %dS %d") ("^pdf$" "." "acroread %o %(outpage)") ("^html?$" "." "netscape %o"))))
 '(column-number-mode t)
 '(debug-on-error nil)
 '(gdb-many-windows t)
 '(gdb-use-separate-io-buffer t)
 '(indent-tabs-mode nil)
 '(mouse-avoidance-mode (quote animate) nil (avoid))
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
 ;; '(ecb-auto-activate t)
 ;; '(ecb-fix-window-size t)
 ;; '(ecb-layout-window-sizes (quote (("left8" (0.16774193548387098 . 0.2894736842105263) (0.16774193548387098 . 0.23684210526315788) (0.16774193548387098 . 0.2894736842105263) (0.16774193548387098 . 0.15789473684210525)))))
 ;; '(ecb-options-version "2.32")
 ;; '(ecb-tip-of-the-day nil)
 ;; '(ecb-windows-width 0.33)
 ;; '(erc-autojoin-channels-alist (quote (("freenode.net" "#ubuntu-cn" "#cuit-uif"))))
 ;; '(erc-nick "Dreamseeker")
 ;; '(erc-part-reason-various-alist (quote (("night" "Bonne Nuit :P"))))
 ;; '(erc-port 6667)
 ;; '(erc-server "irc.freenode.net")
 ;; '(erc-user-full-name "Dreamseeker")
 ;; '(jde-jdk-registry (quote (("1.6.0_06" . "/usr/lib/jvm/java-6-sun")))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Font settings.
(set-face-attribute 'default nil :font "Monaco 13")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Hiragino Sans GB" :size 13)))

;; Remember last cursor position.
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;; Set default spell checker.
(setq-default ispell-program-name "aspell")

;; Ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)

;; Auto Fill Mode
(setq-default fill-column 72)
(add-hook 'python-mode-hook 'turn-on-auto-fill)

;; ----------------------------------------------------------------------
;; INDENTATION
;; ----------------------------------------------------------------------

;; ;; C
;; (defun my-c-mode-hook ()
;;   (setq comment-start "// ")
;;   (setq comment-end "")
;;   (c-set-offset 'substatement-open 0)
;;   (c-set-offset 'case-label 4)
;;   (c-set-offset 'statement-case-open 4)
;;   (c-set-offset 'defun-block-intro 4)
;;   (c-set-offset 'brace-list-intro 4)
;;   (c-set-offset 'topmost-intro 2))
;; (add-hook 'c-mode-hook 'my-c-mode-hook)
;; 
;; ;; C++
;; (defconst my-c++-style
;;   '((c-hanging-braces-alist . ((substatement-open after)
;;                                (brace-list-open)))
;;     (c-hanging-colons-alist . ((member-init-intro before)
;;                                (inher-intro)
;;                                (case-label after)
;;                                (label after)
;;                                (access-label after)))
;;     (c-cleanup-list         . (scope-operator
;;                                empty-defun-braces
;;                                defun-close-semi))
;;     (c-offsets-alist        . ((arglist-close . c-lineup-arglist)
;;                                (substatement-open . 0)
;;                                (topmost-intro     . 0)
;;                                (case-label        . 4)
;;                                (access-label      . -2)
;;                                (inline-open       . 0)
;;                                (member-init-intro . 4)
;;                                (defun-block-intro . 4)
;;                                (inline-close      . 0)
;;                                (substatement      . 4)
;;                                (statement-block-intro . 4)
;;                                (block-open        . 0)
;;                                (knr-argdecl-intro . -)
;;                                (brace-list-intro  . 4))))
;;   "My C++ Programming Style")
;; (c-add-style "PERSONAL" my-c++-style)
;; (defun my-c++-mode-hook ()
;;   (c-set-style "PERSONAL"))
;; (add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Java
(defun my-java-mode-hook ()
    (setq c-basic-offset 4)
    (c-set-offset 'substatement-open 0)
    (c-set-offset 'else-clause 0)
    (c-set-offset 'case-label 4)
    (c-set-offset 'arglist-cont-nonempty '(c-lineup-arglist-operators c-lineup-arglist)))
(add-hook 'java-mode-hook 'my-java-mode-hook)

;; ----------------------------------------------------------------------
;; KEY BINDINGS
;; ----------------------------------------------------------------------

;; Replace `C-@' to `C-^'.
(global-set-key (kbd "C-^") 'set-mark-command)

;; Compile
(global-set-key (kbd "<f8>") 'compile)

;; Auto indent when Enter.
(global-set-key "\r" 'newline-and-indent)

(windmove-default-keybindings)

(setq skeleton-pair-alist nil)
(setq skeleton-pair t)
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "<") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "'") 'skeleton-pair-insert-maybe)

;; Make `M-w' can copy a line.
(defun xiaogaozi-kill-ring-save (&optional n)
  "If region is active, copy region. Otherwise, copy line."
  (interactive "p")
  (if mark-active
      (kill-ring-save (region-beginning) (region-end))
    (if (> n 0)
        (kill-ring-save (line-beginning-position) (line-end-position n))
      (kill-ring-save (line-beginning-position n) (line-end-position)))))
(global-set-key (kbd "M-w") 'xiaogaozi-kill-ring-save)

;; YASnippet
(global-set-key (kbd "M-s i") 'yas/insert-snippet)
(global-set-key (kbd "M-s v") 'yas/visit-snippet-file)

;; ;; ECB
;; (global-set-key (kbd "<f11>") 'ecb-activate)
;; (global-set-key (kbd "C-<f11>") 'ecb-deactivate)
;; (global-set-key (kbd "M-s-h") 'ecb-goto-window-methods)
;; (global-set-key (kbd "M-s-l") 'ecb-goto-window-edit-last)
 
;; ;; ERC
;; (global-set-key (kbd "<f12>") 'erc)

;; ;; EMMS
;; (global-set-key (kbd "<f6>") 'emms-play-directory)
;; (global-set-key (kbd "<f5>") 'emms-playlist-mode-go)

;; ----------------------------------------------------------------------
;; SITE-LISP
;; ----------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; Google's C/C++ style for c-mode
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; AsciiDoc Major Mode
(autoload 'doc-mode "doc-mode")
(add-to-list 'auto-mode-alist (cons "\\.\\(txt\\|asciidoc\\)\\'" 'doc-mode))

;; Go Major Mode
(require 'go-mode-load)

;; Markdown Major Mode
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
;; Unset markdown-mode TAB key binding.
(defun markdown-unset-tab ()
  "markdown-mode-hook"
  (define-key markdown-mode-map (kbd "<tab>") nil))
(add-hook 'markdown-mode-hook '(lambda() (markdown-unset-tab)))
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; color-theme
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))
(require 'color-theme-tomorrow)
(color-theme-tomorrow-night-bright)

;; template
(require 'template)
(template-initialize)

;; ;; auto-header
;; (require 'auto-header)
;; (setq header-full-name "Dreamseeker"
;;       header-email-address "gaochangjian<at>gmail<dot>com"
;;       header-copyright-notice "Copyleft (c) INF, Dreamseeker"
;;       header-update-on-save '(filename modified counter copyright)
;;       header-field-list '(filename
;;                           blank
;;                           description
;;                           blank
;;                           author
;;                           created
;;                           blank
;;                           modified_by
;;                           modified
;;                           blank
;;                           status
;;                           update
;;                           blank
;;                           copyright))
;; ;; auto update the number of count
;; (global-set-key (kbd "s-h") (lambda ()
;;                               (interactive)
;;                               (if (header-exists-p)
;;                                   (header-update-count)
;;                                 (header-make t))))

;; AUCTeX
(require 'tex-site)
(defun auctex ()
  (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t; %`xelatex%(mode)%' %t" TeX-run-TeX nil t)) ;; 这里我编译了两次
    (setq TeX-command-default "XeLaTeX") ;; 设定默认编译命令为XeLaTeX
    (setq TeX-save-query nil)            ;; 保存之前不询问
    (setq TeX-show-compilation t))       ;; 在新窗口显示编译过程
(add-hook 'LaTeX-mode-hook 'auctex)

;; ;; EMMS
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/emms/")
;; (require 'emms-setup)
;; (emms-standard)
;; (emms-default-players)
;; (setq emms-repeat-playlist t
;;       emms-source-file-default-directory "/home/xiaolan/music/"
;;       emms-lyrics-coding-system nil     ;; Let Emacs to identify the encode of lyrics.
;;       emms-lyrics-dir "/home/xiaolan/music/lyrics")
;; ;; Show info at mode-line.
;; (require 'emms-mode-line)
;; (emms-mode-line 1)
;; ;; Show time of music.
;; (require 'emms-playing-time)
;; (emms-playing-time 1)
;; ;; Show lyrics.
;; (require 'emms-lyrics)
;; (emms-lyrics 1)
;; ;; Auto identify encode.
;; (require 'emms-i18n)
;; ;; Auto save and import playlist.
;; (require 'emms-history)
;; (emms-history-load)

;; ;; JDEE
;; (setq defer-loading-jde t)
;; (if defer-loading-jde
;;     (progn
;;       (autoload 'jde-mode "jde" "JDE mode." t)
;;       (setq auto-mode-alist
;;                      (append
;;                       '(("\\.java\\'" . jde-mode))
;;                       auto-mode-alist)))
;;   (require 'jde))

;; rect-mark.el
;; Support for marking a rectangle of text with highlighting.
(define-key ctl-x-map "r\C-@" 'rm-set-mark)
(define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
(define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
(define-key ctl-x-map "r\C-w" 'rm-kill-region)
(define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
(define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)
(autoload 'rm-set-mark "rect-mark"
  "Set mark for rectangle." t)
(autoload 'rm-exchange-point-and-mark "rect-mark"
  "Exchange point and mark for rectangle." t)
(autoload 'rm-kill-region "rect-mark"
  "Kill a rectangular region and save it in the kill ring." t)
(autoload 'rm-kill-ring-save "rect-mark"
  "Copy a rectangular region to the kill ring." t)
(autoload 'rm-mouse-drag-region "rect-mark"
  "Drag out a rectangular region with the mouse." t)

;; ;; Pymacs
;; (autoload 'pymacs-apply "pymacs")
;; (autoload 'pymacs-call "pymacs")
;; (autoload 'pymacs-eval "pymacs" nil t)
;; (autoload 'pymacs-exec "pymacs" nil t)
;; (autoload 'pymacs-load "pymacs" nil t)
;; 
;; ;; Ropemacs
;; (pymacs-load "ropemacs" "rope-")

;; YASnippet
(add-to-list 'load-path
              "~/.emacs.d/site-lisp/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/site-lisp/yasnippet-0.6.1c/snippets")
(setq yas/prompt-functions '(yas/dropdown-prompt))

;; Auto Complete Mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete/")
(require 'go-autocomplete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/ac-dict")
(ac-config-default)

;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

(defadvice gud-display-line (before turn-on-hl-line-mode activate)
  "Turn on highlight line mode."
  (set-buffer (gud-find-file true-file))
  (hl-line-mode 1))

(defun turn-off-hl-line-mode ()
  "Turn off highlight line mode."
  (dolist (buf (buffer-list))
    (set-buffer buf)
    (hl-line-mode -1)))

(defadvice gud-kill-buffer-hook (before turn-off-hl-when-kill-buffer activate)
  (turn-off-hl-line-mode))

;; (defadvice kill-process (before turn-off-hl-when-kill-process activate)
;;   "Turn off highlight line mode."
;;   (if (string-match "^gud-" (process-name process))
;;       (turn-off-hl-line-mode)))

;; (defadvice gdb-setup-windows (after gdb-setup-more-windows activate)
;;   "Customization window layout."
;;   (setq gdb-pending-triggers (delq 'gdb-invalidate-assembler gdb-pending-triggers))
;;   (gdb-display-assembler-buffer))
;;   ;; (other-window 3)
;;   ;; (delete-window)
;;   ;; (split-window)
;;   ;; (other-window 1)
;;   ;; (set-window-buffer (selected-window) (get-buffer (gdb-assembler-buffer-name)))
;;   ;; (other-window -2))

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
