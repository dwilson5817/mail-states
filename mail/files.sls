---
# CLONE MAILCOW FILES
# Clone mailcow files from GitHub.  Specifically, these files include a docker-compose.yml file which will be used to
# bring up mailcow.  A possible improvement to these states would be to bring up mailcow automatically.
mailcow_clone:
  git.cloned:
    - name: https://github.com/mailcow/mailcow-dockerized.git
    - target: /opt/mailcow-dockerized
    - branch: master
