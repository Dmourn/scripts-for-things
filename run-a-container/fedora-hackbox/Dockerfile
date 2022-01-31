FROM registry.fedoraproject.org/fedora:latest

RUN dnf upgrade -y && dnf install -y hydra wfuzz gobuster vim vim-gv git mycli httpie nmap openssh-clients python3-pwntools libuser zsh zsh-autosuggestions zsh-syntax-highlighting libpq

RUN dnf group install -y "$(dnf group list | grep 'C Dev' | sed 's/^\s*//g')"

RUN useradd -m userman -s /bin/zsh

COPY --chown=userman:userman ./zshrc /home/userman/.zshrc
ENTRYPOINT ["su","userman"]
