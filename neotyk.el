;; setup topics
(setq load-path (cons "~/.emacs.d/topics" load-path))
(require 'dev-topic)
(require 'clojure-topic)
(require 'org-topic)
(require 'ui-topic)
(require 'ux-topic)
(require 'js-topic)

;; enable upcase region
(put 'upcase-region 'disabled nil)

;; gnugo
(require 'gnugo)
