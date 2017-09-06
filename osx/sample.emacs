;========================================================
; general

; on close, save open buffers for next time
(desktop-save-mode 1)

; tabs
(add-hook 'python-mode-hook
  (lambda ()
    (setq indent-tabs-mode nil)))

;========================================================
; spell checking

; use hunspell for spell checking
(when (executable-find "hunspell")
  (setq-default ispell-program-name "hunspell")
  (setq ispell-really-hunspell t))

; enable spell checking on the fly
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

; enable spell checking on the fly in comments
(dolist (mode '(emacs-lisp-mode-hook
                python-mode-hook
                js-mode-hook
                R-mode-hook))
(add-hook mode
  '(lambda ()
     (flyspell-prog-mode))))

;========================================================
; Dockerfile mode
(add-to-list 'load-path (concat (getenv "HOME") "/Github/dockerfile-mode"))
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
