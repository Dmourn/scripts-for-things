FROM registry.fedoraproject.org/fedora:latest

RUN dnf upgrade -y && dnf install -y dropbear

ENTRYPOINT ["sh", "-ic", "dropbearkey -t rsa -f /etc/dropbear/dropbear_rsa_host_key "]
