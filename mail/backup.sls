---
# INSTALL CRON
# On live environments this will almost certainly be installed but when running inside a container the cron package is
# not pre-installed, so we include this state to ensure it is always available.
cron:
  pkg.installed

# DAILY BACKUP
# Run the mailcow backup script every day.  This script will manage the backup location for us.  It will export all the
# mailcow containers, and delete old backups which are older than the --delete-days option.
daily_backup:
  cron.present:
    - name: cd /opt/mailcow-dockerized/; MAILCOW_BACKUP_LOCATION=/mnt/ftpback-rbx2-173.ovh.net/mail01/ /opt/mailcow-dockerized/helper-scripts/backup_and_restore.sh backup all --delete-days 5
    - user: root
    - special: '@daily'
    - require:
      - pkg: cron
