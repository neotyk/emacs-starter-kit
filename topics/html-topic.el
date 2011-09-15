;; zencoding
(add-to-list 'load-path "~/.emacs.d/plugins/zencoding/")
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)

(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

(provide 'html-topic)
