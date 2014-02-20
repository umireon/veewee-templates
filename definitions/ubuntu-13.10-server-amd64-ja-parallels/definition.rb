Veewee::Session.declare({
  :os_type_id => 'Ubuntu_64',
  :iso_file => "ubuntu-13.10-server-amd64.iso",
  :iso_src => "http://releases.ubuntu.com/13.10/ubuntu-13.10-server-amd64.iso",
  :iso_md5 => "4d1a8b720cdd14b76ed9410c63a00d0e",
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Esc><Esc><Enter>',
    '/install/vmlinuz initrd=/install/initrd.gz noapic ',
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
    "parallels.sh",
    "cleanup.sh"
  ]
})
