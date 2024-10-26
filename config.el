(beacon-mode 1)

(setq doom-theme 'doom-tokyo-night)

(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 15 :weight 'regular))

(setq display-line-numbers-type 'relative)

(use-package! org-auto-tangle
  :defer t
  :hook (org-mode . org-auto-tangle-mode)
  :config
  (setq org-auto-tangle-default t))

(defun hv/insert-auto-tangle-tag ()
  "Insert auto-tangle in literate config."
  (interactive)
  (evil-org-open-below 1)
  (insert "#+auto_tangle: t")
  (evil-force-normal-state))

(map! :leader
      :desc "Insert auto_tangle tag" "i a" #'hv/insert-auto-tangle-tag)

(setq org-directory "~/org/")

(setq org-roam-directory "~/org/roam/")
