;; closure-template
(add-to-list 'load-path "~/.emacs.d/cl-closure-template/")
(require 'closure-template-html-mode)

(add-to-list 'load-path "~/.emacs.d/js2-mode/")
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(provide 'js-topic)
