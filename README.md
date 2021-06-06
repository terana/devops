# devops
Playing around with DevOps tools.

### Features
Here is a trivial web server with some DevOps whistles around it:
- it runs in a Vagrant VM
- VM provisioned by Salt
- VM set up is verified with Serverspec
- web app launch managed by systemd
- configured logrotate

The web server is listening on 0.0.0.0:8080

### Run
To get everything up and running:
```bash
vagrant up
```

To check what's inside the VM:
```bash
./ssh_to_machine.sh minion
```

Crash the server! (And see how systemd restarts it)
```bash
curl 0.0.0.0:8080/die
```

Don't forget to clean up after playing:
```bash
vagrant destroy
```
