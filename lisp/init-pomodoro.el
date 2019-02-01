(use-package pomodoro
  :ensure t
  :init
  (my/leader-keys
    "ap" 'pomodoro-start)
  :config
  (setq pomodoro-time-format "%.2m"
	pomodoro-work-time 25
	pomodoro-break-time 5
	pomodoro-work-cycle "W"
	pomodoro-break-cycle "B"
	pomodoro-show-number t
	pomodoro-work-start-message "You are AWESOME! Let's back to work!"
	pomodoro-break-start-message "You are AWESOME! Have a break!"
	pomodoro-desktop-notification t))

(provide 'init-pomodoro)
