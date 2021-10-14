# rancher-tests
Use rancher to provision kubernetes cluster, use terraform to provision nodes

INITIAL CONFIGURATION
=====================
1. Install docker
$ curl https://releases.rancher.com/install-docker/20.10.sh | sh

2. Run docker in rootless mode
$ sudo apt-get install -y uidmap
$ dockerd-rootless-setuptool.sh install

3. Install rancher
$ sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher

4. Go to https://public_ip

5. Get initial password from docker logs
$ sudo docker ps - get container id
$ sudo docker logs container_id 2>&1 | grep "Bootstrap Password:"

6. Put this password in form on url in step 4.

7. Create new password for admin user

ANSIBLE
=======
To install docker with ansible we need:
1. Dynamic inventory
2. playbook
