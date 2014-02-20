# Update the box
apt-get -y update
apt-get -y upgrade
apt-get -y install curl

# Set up sudo
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

# Remove 5s grub timeout to speed up booting
mv /etc/default/grub /etc/default/grub.orig
sed -e '/TIMEOUT/c\GRUB_TIMEOUT=0' > /etc/default/grub
update-grub
