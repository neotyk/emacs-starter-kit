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

;; align configuration
(require 'align)
(add-to-list 'align-lisp-modes 'clojure-mode)
(add-to-list 'align-rules-list
             '(clojure-keyword-map
               (regexp . ":[^\s]+\\(\s+\\).+")
               (group  . 1)
               (modes  . align-lisp-modes)))

;; enable upcase region
(put 'upcase-region 'disabled nil)

;; gnugo
(require 'gnugo)
