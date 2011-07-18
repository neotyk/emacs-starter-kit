;; zencoding
(add-to-list 'load-path "~/.emacs.d/plugins/zencoding/")
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)

(provide 'html-topic)
