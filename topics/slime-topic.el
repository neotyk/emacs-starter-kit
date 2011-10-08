;; slime
(add-to-list 'load-path "~/.emacs.d/slime/")
(add-to-list 'load-path "~/.emacs.d/slime/contrib/")
(require 'slime)
(add-hook 'slime-repl-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)
            (paredit-mode t)))

(setq slime-protocol-version 'ignore)

(require 'js-topic)

;; slime-js
(global-set-key [f5] 'slime-js-reload)
(add-hook 'js2-mode-hook
          (lambda ()
            (slime-js-minor-mode 1)))

(slime-setup '(slime-repl
               slime-editing-commands
               slime-highlight-edits
               slime-js))

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/dict")
(ac-config-default)

;; auto-complete slime
(add-to-list 'load-path "~/.emacs.d/plugins/ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

(provide 'slime-topic)
