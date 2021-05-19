(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

(defun my-sync-configuration-layers (&optional arg)
    (interactive "P")
    (org-babel-tangle-file "~/git/dotspacemacs/README.org")
    (dotspacemacs/sync-configuration-layers arg))

(spacemacs/set-leader-keys "feR" 'my-sync-configuration-layers)

)
