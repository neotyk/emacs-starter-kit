;; setup topics
(setq load-path (cons "~/.emacs.d/topics" load-path))
(require 'dev-topic)
(require 'clojure-topic)
(require 'org-topic)

;; ui topic
(require 'ui-topic)

(setq flyspell-mode t)

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

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(yas/initialize)
(setq yas/snippet-dirs '("~/.emacs.d/snippets"
                         "~/.emacs.d/plugins/yasnippet/snippets"))

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
