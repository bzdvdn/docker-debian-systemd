# Debian Docker Image with systemd

Debian Docker image with systemd, for tests with `ansible` and `molecule`

## Tags

- `12`, `bookworm`, `latest`
- `11`, `bullseye`
- `10`, `buster`

## Use

- `docker pull bzdvdn/docker-debian-systemd` .
- `docker run --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro -d --privileged bzdvdn/docker-debian-systemd`
