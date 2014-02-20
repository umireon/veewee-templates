# Install the Parallels Tools
PARALLELS_TOOLS_ISO=prl-tools-lin.iso
mount -o loop $PARALLELS_TOOLS_ISO /media/cdrom
/media/cdrom/install --install-unattended-with-deps --progress
umount /media/cdrom

# Restart network after prl_eth loaded
cat << EOF > /etc/init/prl_eth-loaded.conf
start on stopped rc
exec restart networking
EOF

# Cleanup
rm $PARALLELS_TOOLS_ISO
