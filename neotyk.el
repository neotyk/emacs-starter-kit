;; setup topics
(setq load-path (cons "~/.emacs.d/topics" load-path))
(require 'dev-topic)
;(require 'js-topic)
(require 'slime-topic)
(require 'clojure-topic)
(require 'haskell-topic)
(require 'html-topic)
(require 'org-topic)
(require 'ui-topic)
(require 'ux-topic)

;; enable upcase region
(put 'upcase-region 'disabled nil)

;; gnugo
(require 'gnugo)
