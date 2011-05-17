;; setup topics
(setq load-path (cons "~/.emacs.d/topics" load-path))
(require 'dev-topic)
(require 'clojure-topic)
(require 'org-topic)

(require 'ui-topic)
(require 'ux-topic)

;(setq next-line-add-newlines t)

;; closure-template
(add-to-list 'load-path "~/.emacs.d/cl-closure-template/")
(require 'closure-template-html-mode)

;; enable upcase region
(put 'upcase-region 'disabled nil)

;; gnugo
(require 'gnugo)
