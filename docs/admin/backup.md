# Backup strategy — quick actionable plan

Scope: 1) Django MySQL DB (Hub)  
2) LDAP (auth)  
3) User homes (with quotas)  
4) Project data

General principles
- Define RPO/RTO per service (e.g., DB: RPO=1h, RTO<1h; homes: RPO=24h).  
- Maintain offsite copies + immutable/retention policy (daily/weekly/monthly).  
- Encrypt backups at rest and in transit; manage keys separately.  
- Automate, monitor, and test restores regularly (drills).  
- Keep configuration and secrets (e.g., /etc, DB users, schema migrations) in backups.

1) Django MySQL database (Hub)
- Use logical + physical backups:
    - Logical: mysqldump for schema-level portability and quick point-in-time snapshots.
        - Example: mysqldump --single-transaction --routines --events -u backup -p hub_db > hub-YYYYMMDD.sql
    - Physical/hot: Percona XtraBackup for large DBs and faster restores.
- Consider binlog-based point-in-time recovery (enable & archive binary logs).
- Store backups in compressed, encrypted store (restic/borg/s3 with SSE).
- Verify: restore to staging, run Django migrations and sanity queries.
- Retention: keep hourly recent (24), daily (7), weekly (4), monthly (12).

2) LDAP (auth layer)
- Export LDIF regularly using slapcat (atomic export).
    - Example: slapcat -v -l ldap-YYYYMMDD.ldif
- For file-based DBs (e.g., bdb/mdb), use filesystem snapshots (LVM/ZFS) or stop slapd and copy DB files.
- Backup ACLs and config (slapd.conf / cn=config export).
- Verify: restore LDIF to a test LDAP instance with slapadd and validate user objects and passwords.

3) User homes (with preset quota)
- Prefer filesystem snapshots (ZFS snapshots or LVM snapshots) to preserve quotas, UID/GID, ACLs and avoid quota inconsistencies.
    - If using ZFS: zfs snapshot dataset@YYYYMMDD and send to backup pool.
- If snapshot not available, use rsync with flags to preserve metadata:
    - rsync -aHAX --numeric-ids --delete --compress /home/ backup-host:/store/homes/
    - Options: -a (archive), -H (hard links), -A (ACLs), -X (xattrs).
- Quotas: snapshot-based backups preserve quota metadata. If using file copy, reapply quotas on restore or include quota metadata export.
- Store incremental backups (borg/restic) to save space; ensure they preserve xattrs/ACLs.
- Verify: mount backup, check file ownerships, permissions and quota usage on a test host.

4) Project data
- Identify project types:
    - Git repos: mirror with git clone --mirror or use git bundle; also backup repo storage paths.
    - Large binary datasets: snapshot or use deduplicating storage (borg/restic) or object storage (S3/MinIO).
- Use repository-aware backups for quicker restores (git bundle or mirror) plus periodic filesystem snapshots for working trees and CI artifacts.
- Preserve metadata, symlinks, executables.
- Verify: clone mirror/bundle to test and run CI or tests.

Tooling recommendations
- Backup engine: restic or borg for dedup, encryption, reliability; or use cloud snapshots (EBS, S3) combined with local tools.
- Orchestration: cron/systemd timers, or use Ansible/backup scripts; for complex infra use Borgmatic or Kopia.
- Monitoring: alert on job failures, size growth, verify checksums.

Restore checklist (for any service)
1. Choose backup timestamp that matches RPO.  
2. Restore to isolated staging first; validate integrity and functionality.  
3. For DBs, apply binlogs/PITR if needed.  
4. For LDAP, use slapadd and reindex.  
5. Re-apply quotas and verify permissions for homes.  
6. Confirm client connectivity and run smoke tests.

Next steps (suggested)
- Provide sizes, acceptable RTO/RPO, and current storage to produce concrete schedules and retention.  
- Implement one service end-to-end (backup, encryption, offsite, restore test) before rolling out others.

GitHub Copilot