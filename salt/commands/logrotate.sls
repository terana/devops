/etc/logrotate.d/sample-server:
  file.managed:
    - contents: |
        /var/log/sample-server/*.log {
          rotate 3
          daily
          compress
          missingok
          notifempty
          postrotate
           systemctl reload sample-server
          endscript
        }

logrotate_setup:
  pkg.installed:
    - name: logrotate

/var/log/sample-server/:
  file.directory:
    - mode: 755
    - makedirs: True
    - user: flask
    - group: flask


/var/log/sample-server/flask.log:
  file.managed:
    - mode: 655
    - user: flask
    - group: flask
    