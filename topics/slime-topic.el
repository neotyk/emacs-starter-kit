;; slime
(add-to-list 'load-path "~/.emacs.d/slime/")
(add-to-list 'load-path "~/.emacs.d/slime/contrib/")
(require 'slime)
(add-hook 'slime-repl-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)))

(setq slime-protocol-version 'ignore)

(require 'js-topic)

;; slime-js
(global-set-key [f5] 'slime-js-reload)
(add-hook 'js2-mode-hook
          (lambda ()
            (slime-js-minor-mode 1)))

(slime-setup '(slime-repl
               slime-editing-commands
               slime-fuzzy
               slime-highlight-edits
               slime-js))

(provide 'slime-topic)
