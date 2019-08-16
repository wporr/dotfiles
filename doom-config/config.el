;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Enable theme
(load-theme 'doom-Iosvkem t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (all-the-icons must be installed!)
(doom-themes-neotree-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

;; Syntax highlighting
(add-to-list 'auto-mode-alist '("\\.pp\\'" . puppet-mode))
(add-to-list 'auto-mode-alist '("\\.cu\\'" . cuda-mode))
(add-to-list 'auto-mode-alist '("\\.tpp\\'" . c-mode))

;; Cuda debugger
(setenv "PATH" (concat (getenv "PATH") ":/usr/bin/cuda-gdb"))
(setq exec-path (append exec-path '("/usr/bin/cuda-gdb")))
(setq gud-gdb-command-name "cuda-gdb --annotate=3")
