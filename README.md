# c7-systemd-vagrant

A CentOS 7 System D base image with SaltStack configured for use with Vagrant

## Building

```bash
git clone https://github.com/aidanharris/c7-systemd-vagrant c7-systemd-vagrant
cd c7-systemd-vagrant
sudo docker build --rm -t local/c7-systemd-vagrant .
```

## Usage

After building the image:

```bash
sudo -E vagrant up --provider docker
sudo -E vagrant ssh
```
