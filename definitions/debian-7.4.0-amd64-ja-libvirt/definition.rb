Veewee::Session.declare({
  :disk_format => 'raw',
  :os_type_id => 'Debian_64',
  :iso_file => "debian-7.4.0-amd64-netinst.iso",
  :iso_src => "http://cdimage.debian.org/debian-cd/7.4.0/amd64/iso-cd/debian-7.4.0-amd64-netinst.iso",
  :iso_md5 => "e7e9433973f082a297793c3c5010b2c5",
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Esc>',
    'install noapic ',
    'auto=true priority=critical url=http://%IP%:%PORT%/preseed.cfg',
    '<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => "10000",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "chef.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ]
})
