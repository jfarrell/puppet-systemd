class systemd {

  Exec {
    refreshonly => true,
    path        => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:'
  }

  exec {
    'systemctl-daemon-reload':
      command => 'systemctl daemon-reload',
  }

  exec {
    'systemd-tmpfiles-create':
      command => 'systemd-tmpfiles --create',
  }

}
