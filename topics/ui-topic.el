;; Inconsolata font
(set-face-attribute 'default nil
                    :family "Inconsolata" :height 140 :weight 'normal)

(set-face-font 'default "-apple-Inconsolata-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-font 'org-column "-apple-Inconsolata-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1")

;; fullscreen
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)

(require 'custom-erc-topic)
(require 'custom-growl-topic)

(provide 'ui-topic)
