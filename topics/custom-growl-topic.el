(defvar growlnotify-command (executable-find "growlnotify") "The path to growlnotify")

(defun growl (title message)
  "Shows a message through the growl notification system using
 `growlnotify-command` as the program."
  (let* ((process (start-process "growl" nil
                                 "/usr/local/bin/growlnotify"
                                 title
                                 "-a" "Emacs"
                                 "-n" "Emacs")))
    (process-send-string process message)
    (process-send-string process "\n")
    (process-send-eof process)))

(defun my-erc-hook (match-type nick message)
  "Shows a growl notification, when user's nick was mentioned. If the buffer is currently not visible, makes it sticky."
  (unless (posix-string-match "^\\** *Users on #" message)
    (growl
     (format "ERC: t:%s %s @%s" match-type nick (buffer-name (current-buffer)))
     message)))

(add-hook 'erc-text-matched-hook 'my-erc-hook)

(provide 'custom-growl-topic)
