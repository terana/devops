/etc/systemd/system/sample-server.service:
  file.managed:
    - contents: |
        [Unit]
        Description = Sample Web Server

        [Service]
        Environment=FLASK_APP=/srv/app/src/main.py
        ExecStart=/usr/bin/python -m flask run --host=0.0.0.0
        ExecReload=/bin/kill -9 $MAINPID
        Restart=always
        User=flask
        Group=flask

sample-server:
  service.running:
    - name: sample-server
    - enable: true
    - reload: true