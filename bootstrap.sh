# Install the tooling you will need
apt-get install -y git

su -c "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash" vagrant
su -c "echo '5.3.0' > /home/vagrant/.nvmrc" vagrant
su -c "echo 'nvm install' >> /home/vagrant/.bashrc" vagrant

# Ensure the projects directory exists (with the relevant permissions) where you will clone your repositories
su -c "mkdir -m 777 -p /home/vagrant/projects" vagrant

# Ensure your git settings are on the virtual machine
su -c "git config --global user.email 'email@andrewrea.co.uk'" vagrant
su -c "git config --global user.name 'Andrew Rea'" vagrant
su -c "git config --global push.default simple" vagrant
