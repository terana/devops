terana:
  user.present:
    - fullname: Anastasiia Terenteva
    - shell: /bin/zsh
    - home: /home/terana`
    - password: test

flask:
  group.present:
    - system: True
  user.present:
  - groups:
      - flask