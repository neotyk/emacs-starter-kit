;; highlight paretheses mode
(require 'highlight-parentheses)

;; clojure mode
(add-to-list 'load-path "~/.emacs.d/clojure-mode/")
(require 'clojure-mode)

;; slime
(add-to-list 'load-path "~/.emacs.d/slime/")
(add-to-list 'load-path "~/.emacs.d/slime/contrib/")
(require 'slime)
(add-hook 'slime-repl-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)))

(setq slime-protocol-version 'ignore)

;; swank-clojure
(add-to-list 'load-path "~/.emacs.d/swank-clojure/")
(require 'swank-clojure)

;; company
(add-to-list 'load-path "~/.emacs.d/company/")
(autoload 'company-mode "company" nil t)

;; slime-company
;;(add-to-list 'load-path "~/.emacs.d/slime-company/")
;;(require 'slime-company)
(slime-setup '(;;slime-fancy
               slime-repl
               ;;slime-autodoc
               ;;slime-c-p-c
               slime-editing-commands
               ;;slime-fancy-inspector
               slime-fuzzy
               slime-highlight-edits
               ;;slime-company
               ))

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

(provide 'clojure-topic)
