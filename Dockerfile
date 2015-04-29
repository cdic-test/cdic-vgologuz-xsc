FROM fedora/systemd-systemd:latest
### CDIC START, code until tag `CDIC END` was auto-generated by cdic service

RUN yum install -y dnf dnf-plugins-core \
    && mkdir -p /etc/yum.repos.d/
RUN dnf copr enable -y msuchy/copr
RUN dnf clean all

### CDIC END
RUN dnf install -y corp-frontend
