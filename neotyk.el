(require 'custom-erc)
(require 'custom-growl)

;; magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

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
               ;;slime-fuzzy
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
            ;;(company-mode t)
            ;; (set (make-local-variable 'company-beckends) '(slime-company-beckend))
            ))

;; elein
(add-to-list 'load-path "~/.emacs.d/elein")
(require 'elein)

;; org-mode
(setq load-path (cons "~/.emacs.d/org-mode/lisp" load-path))
(require 'gtd)
(org-reload)

;; gist
(add-to-list 'load-path "~/.emacs.d/gist.el/")
(require 'gist)
(require 'gist-auth)

(setq flyspell-mode t)

; (color-theme-zenburn)

;; (unless (zenburn-format-spec-works-p)
;;   (zenburn-define-format-spec))

;; Inconsolata font
(set-face-attribute 'default nil
                    :family "Inconsolata" :height 130 :weight 'normal)

(set-face-font 'default "-apple-Inconsolata-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-font 'org-column "-apple-Inconsolata-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1")

;(setq next-line-add-newlines t)

(require 'recentf)
 
;; get rid of `find-file-read-only' and replace it with something
;; more useful.
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)
 
;; enable recent files mode.
(recentf-mode t)
 
; 50 files ought to be enough.
(setq recentf-max-saved-items 50)
 
(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (let ((home (expand-file-name (getenv "HOME"))))
    (find-file
     (ido-completing-read "Recentf open: "
                          (mapcar (lambda (path)
                                    (replace-regexp-in-string home "~" path))
                                  recentf-list)
                          nil t))))

;; closure-template
(add-to-list 'load-path "~/.emacs.d/cl-closure-template/")
(require 'closure-template-html-mode)

;; desktop save mode
(setq desktop-save-mode 1)
