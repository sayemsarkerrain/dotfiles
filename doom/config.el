(setq org-directory "~/org/")

(setq display-line-numbers-type 'relative)

(setq doom-theme 'doom-one)
;; (setq doom-theme 'doom-one-light)

;;(setq doom-font (font-spec :family "Fira Code" :size 13))
(setq doom-font (font-spec :family "Hack" :size 13))

(use-package! org-roam
              :custom
              (org-roam-directory (file-truename "~/org/"))
              :config
              (org-roam-db-autosync-mode)
              (map! :leader
                   (:prefix ("n" . nil)
                    :desc "Org roam capture"       "c" #'org-roam-capture
                    :desc "Org roam insert node"   "i" #'org-roam-node-insert
                    :desc "Org roam find node"     "f" #'org-roam-node-find
                    :desc "Org roam UI"            "g" #'org-roam-ui-mode)))

(setq org-roam-capture-templates
      '(("n" "note" plain "%?"
         :target (file+head "${slug}.org"
                            "#+title: ${title}\n#+created: %U\n")
         :unnarrowed t)))

(use-package! org-roam-ui
              :after org-roam
              :hook (org-roam-mode . org-roam-ui-mode)
              :config
              (setq org-roam-ui-sync-theme t
                   org-roam-ui-follow t
                    org-roam-ui-update-on-save t
                    org-roam-ui-open-on-start t))

(setq org-agenda-files
      (directory-files-recursively "~/org/" "\\.org$"))

(setq org-agenda-skip-scheduled-if-done t
      org-agenda-skip-deadline-if-done t)

(map! :leader
      :desc "org-agenda" "a" #'org-agenda)

(setq org-agenda-sorting-strategy
      '((tags tag-up)))

(map! :leader
      :desc "org-capture" "c" #'org-capture)

(after! org
  (setq org-capture-templates
        '(
          ("t" "tasks" entry
           (file "~/org/tasks.org")
           "* TODO %U %? :todos:\n")

          ("i" "ideas" entry
           (file "~/org/ideas.org")
           "* IDEA %U %? :ideas:\n")

          ("j" "journal")
          ("jr" "reflections" entry
           (file+olp+datetree "~/org/journal.org")
           "* %U Reflection %? :reflections:\n")
          ("jo" "observations" entry
           (file+olp+datetree "~/org/journal.org")
           "* %U %? :observations:\n"))))

(after! org
  (setq org-todo-keywords
        '((sequence
           "TODO(t)"
           "PROJ(p)"
           "LOOP(l)"
           "STRT(s)"
           "WAIT(w)"
           "HOLD(h)"
           "IDEA(i)"
           "NOTE(n)"
           "|"
           "DONE(d)"
           "KILL(k)"
           "ARCH(a)"
           "PROC(P)"))))

(setq evil-escape-key-sequence "jk")
(setq evil-escape-delay 0.2)

(setq ispell-program-name "hunspell")

(setq ispell-hunspell-dict-paths-alist
      '(("en_US" "C:/Hunspell/dict/en_US.aff")))

(setq ispell-local-dictionary "en_US")

(setq delete-by-moving-to-trash t)

(setq confirm-kill-emacs nil)

(setq initial-buffer-choice "~/org/")
