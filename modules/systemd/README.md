Systemd
=======

Adapt [oh-my-zsh][1] plugin `systemd` to fit into prezto.

Aliases - User Command
-----------------------
  - sc-list-units       -->  `systemctl list-units`
  - sc-is-active        -->  `systemctl is-active`
  - sc-status           -->  `systemctl status`
  - sc-show             -->  `systemctl show`
  - sc-help             -->  `systemctl help`
  - sc-list-unit-files  -->  `systemctl list-unit-files`
  - sc-is-enabled       -->  `systemctl is-enabled`
  - sc-list-jobs        -->  `systemctl list-jobs`
  - sc-show-environment -->  `systemctl show-environment`


Aliases - Sudo Command
----------------------
  - sc-start --> `systemctl start`
  - sc-stop --> `systemctl stop`
  - sc-reload --> `systemctl reload`
  - sc-restart --> `systemctl restart`
  - sc-try-restart --> `systemctl try-restart`
  - sc-isolate --> `systemctl isolate`
  - sc-kill --> `systemctl kill`
  - sc-reset-failed --> `systemctl reset-failed`
  - sc-enable --> `systemctl enable`
  - sc-disable --> `systemctl disable`
  - sc-reenable --> `systemctl reenable`
  - sc-preset --> `systemctl preset `
  - sc-mask --> `systemctl mask`
  - sc-unmask --> `systemctl unmask `
  - sc-link --> `systemctl link`
  - sc-load --> `systemctl load`
  - sc-cancel --> `systemctl cancel`
  - sc-set-environment --> `systemctl set-environment`
  - sc-unset-environment --> `systemctl unset-environment`

[1]: https://github.com/robbyrussell/oh-my-zsh 
