(require 'org)
(setq org-default-notes-file (concat org-directory "~/org/gtd.org"))
(define-key global-map "\C-cc" 'org-capture)

;; pomodoro
(add-to-list 'org-modules 'org-timer)
(setq org-timer-default-timer 25)
(setq org-return-follows-link t)
(add-hook 'org-clock-in-hook
          '(lambda ()
             (if (not org-timer-current-timer)
                 (org-timer-set-timer '(16)))))

;; agenda views
(setq org-agenda-custom-commands
      '(("H" "Office and Home Lists"
         ((agenda)
          (tags-todo "OFFICE")
          (tags-todo "HOME")
          (tags-todo "COMPUTER")
          (tags-todo "DVD")
          (tags-todo "READING")))
        ("D" "Daily Action List"
         ((agenda "" ((org-agenda-ndays 1)
                      (org-agenda-sorting-strategy
                       '((agenda time-up priority-down tag-up)))
                      (org-deadline-warning-days 0)))))))

(provide 'gtd)
