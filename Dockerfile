FROM local/c7-systemd-saltstack
MAINTAINER "Aidan Harris" <mail@aidanharris.io>

ADD salt/conf/minion /etc/salt/minion
ADD salt/roots /srv/salt
ADD salt/pillar /srv/pillar
ADD salt/formulas /srv/formulas

RUN salt-call state.apply && \
    sed -i '/pam_nologin.so/ s?^?#?' /etc/pam.d/* && \
    yum clean all && \
    rm -rf /var/cache/*/* && \
    rm -rf /tmp/*

EXPOSE 22
CMD ["/usr/sbin/init"]
