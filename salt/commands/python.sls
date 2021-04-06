python_setup:
  pkg.installed:
    - name: python-pip

  pip.installed:
  - requirements: /srv/app/requirements.txt
