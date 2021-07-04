# https://gist.github.com/npearce/6f3c7826c7499587f00957fee62f8ee9

# It additionally installs git/yum-cron, 
# configures yum-cron to automatically install security updates hourly, 
# and sets a system wide env to specify that I want the alpine tag of docker-compose.

# clipboard
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -ivh epel-release-latest-7.noarch.rpm
sudo yum-config-manager --enable epel
sudo yum install xclip -y

sudo yum -y install git docker yum-cron; \
 sudo sed -i '/update_cmd/s/= .*/= security/' /etc/yum/yum-cron-hourly.conf; \
 sudo sed -i '/update_messages/s/= .*/= no/' /etc/yum/yum-cron-hourly.conf; \
 sudo sed -i '/apply_updates/s/= .*/= yes/' /etc/yum/yum-cron-hourly.conf; \
 sudo sed -i '/download_updates/s/= .*/= yes/' /etc/yum/yum-cron-hourly.conf; \
 sudo sed -i '/download_updates/s/= .*/= no/' /etc/yum/yum-cron.conf; \
 sudo service yum-cron start; \
 sudo chkconfig yum-cron on; \
 sudo service docker start; \
 sudo usermod -a -G docker ec2-user; \
 sudo chkconfig docker on; \
 sudo sh -c "echo 'export DOCKER_COMPOSE_IMAGE_TAG=ghcr.io/linuxserver/docker-compose:alpine' >> /etc/profile.d/dockerComposeAlpineImageTagEnv.sh"; \
 sudo curl -L --fail https://raw.githubusercontent.com/linuxserver/docker-docker-compose/master/run.sh -o /usr/local/bin/docker-compose; \
 sudo chmod +x /usr/local/bin/docker-compose; \
 sudo reboot;