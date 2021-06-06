# devops
Playing around with DevOps tools.

### Features
Here is a trivial web server with some DevOps whistles around it:
- it runs in a Vagrant VM
- VM provisioned by Salt
- VM set up is verified with Serverspec
- web app launch managed by systemd
- configured logrotate

### Run
To get everything up and running:
```bash
vagrant up
```
