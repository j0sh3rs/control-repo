class base::systemd {
  class { 'systemd':
    manage_resolved  => true,
    manage_networkd  => true,
    manage_timesyncd => true,
    manage_journald  => true,
    ntp_server          => ['0.pool.ntp.org', '1.pool.ntp.org'],
    fallback_ntp_server => ['2.pool.ntp.org', '3.pool.ntp.org'],
  }
}
