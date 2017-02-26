{% from "common/locale-map.jinja" import generatelocale with context %}

generate_locales:
  cmd.run:
    - name: {{ generatelocale.cmd }}
    - check_cmd:
      - /bin/true
