users:
  ## Full list of pillar values
  vagrant:
    fullname: vagrant
    password: vagrant
    enforce_password: True
    # WARNING: If 'empty_password' is set to True, the 'password' statement
    # will be ignored by enabling password-less login for the user.
    empty_password: False
    hash_password: True
    system: False
    home: /home/vagrant
    homedir_owner: vagrant
    homedir_group: vagrant
    createhome: True
    sudouser: True
    # sudo_rules doesn't need the username as a prefix for the rule
    # this is added automatically by the formula.
    # ----------------------------------------------------------------------
    # In case your sudo_rules have a colon please have in mind to not leave
    # spaces around it. For example:
    # ALL=(ALL) NOPASSWD: ALL    <--- THIS WILL NOT WORK (Besides syntax is ok)
    # ALL=(ALL) NOPASSWD:ALL     <--- THIS WILL WORK
    sudo_rules:
      - ALL=(ALL) NOPASSWD:ALL
    sudo_defaults:
      - '!requiretty'
    shell: /bin/bash
    remove_groups: False
    prime_group:
      name: vagrant
      gid: 500
    groups:
      - vagrant
    ssh_auth:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key
