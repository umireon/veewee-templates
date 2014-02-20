# Update the box
apt-get -y update
apt-get -y upgrade
apt-get -y install curl

# Tweak sshd to prevent DNS resolution (speed up logins)
echo 'UseDNS no' >> /etc/ssh/sshd_config

# Set up sudo
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant
