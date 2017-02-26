{% from "sshd/map.jinja" import sshd with context %}
install_openssh_server:
  pkg.installed:
    - pkgs:
      - {{ sshd.pkg }}
      - {{ sshd.scp }}
      - {{ sshd.rsync }}
{{ sshd.service }}:
  service.running:
    - enable: True
    - reload: False
