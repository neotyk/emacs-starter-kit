(setq flyspell-mode t)

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

;; desktop save mode
(setq desktop-save-mode 1)

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(yas/initialize)
(setq yas/snippet-dirs '("~/.emacs.d/snippets"
                         "~/.emacs.d/plugins/yasnippet/snippets"))

;; undo-tree
(add-to-list 'load-path "~/.emacs.d/plugins/undo-tree/")
(require 'undo-tree)
(global-undo-tree-mode)


(provide 'ux-topic)
