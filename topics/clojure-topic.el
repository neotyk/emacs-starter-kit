;; highlight paretheses mode
(require 'highlight-parentheses)

;; clojure mode
(add-to-list 'load-path "~/.emacs.d/clojure-mode/")
(require 'clojure-mode)

;; swank-clojure
(add-to-list 'load-path "~/.emacs.d/swank-clojure/")
(require 'swank-clojure)

;; clojure test mode
(require 'clojure-test-mode)

;; midje
(add-to-list 'load-path "~/.emacs.d/midje/")
(require 'midje-mode)
(eval-after-load 'clojure-mode
  '(define-clojure-indent
     (fact 'defun)
     (facts 'defun)
     (against-background 'defun)
     (provided 0)))

;; slime
(require 'slime-topic)

;; configure clojure-mode
(add-hook 'clojure-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)
            (paredit-mode t)
            (slime-mode t)
            (midje-mode t)
            (flyspell-mode nil)
            ;;(company-mode t)
            ;; (set (make-local-variable 'company-beckends) '(slime-company-beckend))
            ))

;; align configuration
(require 'align)
(add-to-list 'align-lisp-modes 'clojure-mode)
(add-to-list 'align-rules-list
             '(clojure-keyword-map
               (regexp . ":[^\s]+\\(\s+\\).+")
               (group  . 1)
               (modes  . align-lisp-modes)))

(provide 'clojure-topic)
