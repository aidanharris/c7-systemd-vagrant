FROM local/c7-systemd-saltstack
MAINTAINER "Aidan Harris" <mail@aidanharris.io>

ADD salt/conf/minion /etc/salt/minion
ADD salt/roots /srv/salt
ADD salt/pillar /srv/pillar
ADD salt/formulas /srv/formulas
ADD installed.txt /tmp/installed.txt

RUN salt-call state.apply && \
    sh -c "cat /tmp/installed.txt | xargs yum install -y " && \
    sed -i '/pam_nologin.so/ s?^?#?' /etc/pam.d/* && \
    systemctl disable firewalld && \
    yum clean all && \
    rm -rf /var/cache/*/* && \
    rm -rf /tmp/*

EXPOSE 22
CMD ["/usr/sbin/init"]
