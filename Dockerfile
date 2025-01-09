FROM debian:12

LABEL maintainer="bzdvdn"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    software-properties-common rsyslog systemd systemd-cron ssh && \
    apt-get clean && \
    rm -Rf /usr/share/doc && \
    rm -Rf /usr/share/man && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i 's/^\($ModLoad imklog\)/#\1/' /etc/rsyslog.conf && \
    rm -f /lib/systemd/system/systemd*udev* && \
    rm -f /lib/systemd/system/getty.targets

VOLUME ["/tmp", "/run", "/sys/fs/cgroup"]
CMD ["/lib/systemd/systemd"]
