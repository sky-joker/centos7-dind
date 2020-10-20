FROM centos:7

RUN yum -y install epel-release
RUN yum -y install iptables supervisor

ENV DOCKER_VERSION=19.03.9

RUN set -eux; \
    curl -L https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz -o docker.tgz && \
    tar --extract \
        --file docker.tgz \
        --strip-components 1 \
        --directory /usr/local/bin && \
    rm docker.tgz

COPY supervisor/docker.ini /etc/supervisord.d/
COPY startup.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/startup.sh

ENTRYPOINT ["startup.sh"]
CMD ["sh"]
