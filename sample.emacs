;========================================================
; general

; on close, save open buffers for next time
(desktop-save-mode 1)

;========================================================
; Python mode
; use spaces
(add-hook 'python-mode-hook
  (lambda ()
    (setq indent-tabs-mode nil
          tab-width 4
	  python-guess-indent nil
	  python-indent 4)))

;========================================================
; spell checking

; use hunspell for spell checking
(when (executable-find "hunspell")
  (setq-default ispell-program-name "hunspell")
  (setq ispell-really-hunspell t))

; enable spell checking on the fly for text files only
(setq-default flyspell-mode nil)

;(dolist (hook '(text-mode-hook))
;  (add-hook hook (lambda () (flyspell-mode 1))))

; enable spell checking on the fly in comments
;(dolist (mode '(emacs-lisp-mode-hook
;                python-mode-hook
;                js-mode-hook
;                R-mode-hook))
;(add-hook mode
;  '(lambda ()
;     (flyspell-prog-mode))))

;========================================================
; yaml mode
(add-to-list 'load-path (concat (getenv "HOME") "/Github/yaml-mode"))
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("*.yml" . yaml-mode))

;========================================================
; Dockerfile mode
(add-to-list 'load-path (concat (getenv "HOME") "/Github/dockerfile-mode"))
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;========================================================
; Snakemake mode
(add-to-list 'load-path (concat (getenv "HOME") "/Github/snakemake-mode"))
(require 'snakemake-mode)

;========================================================
; Org mode
;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;========================================================
; Shell mode
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)
