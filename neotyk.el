(require 'custom-erc)
(require 'custom-growl)

;; magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

;; elein
(add-to-list 'load-path "~/.emacs.d/elein")
(require 'elein)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(ac-config-default)

;; auto-complete for slime
(add-to-list 'load-path "~/.emacs.d/ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

;; highlight paretheses mode
(require 'highlight-parentheses)
(add-hook 'clojure-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)))
(require 'swank-clojure)
(add-hook 'slime-repl-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)))

;; org-mode
(setq load-path (cons "~/.emacs.d/org-mode/lisp" load-path))
(require 'gtd)
(org-reload)

;; gist
(add-to-list 'load-path "~/.emacs.d/gist.el/")
(require 'gist)
(require 'gist-auth)

(setq flyspell-mode t)

(color-theme-zenburn)

(unless (zenburn-format-spec-works-p)
  (zenburn-define-format-spec))

;; Inconsolata font
(set-face-font 'default "-apple-Inconsolata-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-font 'org-column "-apple-Inconsolata-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1")
