(require 'custom-erc)
(require 'custom-growl)

;; magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

;; elein
(add-to-list 'load-path "~/.emacs.d/elein")
(require 'elein)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(ac-config-default)

;; auto-complete for slime
(add-to-list 'load-path "~/.emacs.d/ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

;; highlight paretheses mode
(require 'highlight-parentheses)
(add-hook 'clojure-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)))
(require 'swank-clojure)
(add-hook 'slime-repl-mode-hook
          (lambda ()
            (highlight-parentheses-mode t)))

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
