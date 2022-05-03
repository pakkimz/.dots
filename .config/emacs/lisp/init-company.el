(use-package company
             :diminish
             :init
             (add-hook 'after-init-hook 'global-company-mode)

             :custom
             ; (company-idle-delay 0.0)
             (company-minimum-prefix-length 1)
             (company-format-margin-function nil)         ;; remove abc
             (company-selection-wrap-around t)            ;; cycle back
             (company-tooltip-align-annotations t)        ;; align parameter hints to right
             ; (company-tng-mode t)                       ;; tab and go

             ; always show tooltip even if there is only one candidate
             (company-frontends '(company-pseudo-tooltip-frontend
                                   company-echo-metadata-frontend))

             ; delete company-dabbrev so can treat symbol as one word
             (delete 'company-dabbrev company-backends)

             :bind (:map company-active-map
                         ("C-j" . company-select-next)
                         ("C-k" . company-select-previous)
                         ("C-e" . company-abort)
                         ("C-w" . company-abort)
                         ("C-SPC" . (lambda () (interactive) (company-abort) (evil-force-normal-state)))  ;; one key two commands
                         ("C-y" . company-complete-selection)
                         ("<tab>" . company-complete-selection)
                         ; ("<return>" . nil)
                         ; ("RET" . nil)
                         )
             )

; path completion
(define-key global-map (kbd "C-.") 'company-files)

(use-package yasnippet-snippets)
(use-package yasnippet
             :diminish yas-minor-mode
             :init
             (yas-global-mode 1))

(provide 'init-company)
