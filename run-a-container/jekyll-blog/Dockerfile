FROM registry.fedoraproject.org/fedora

RUN dnf upgrade -y && dnf install libuser ruby-devel rubygem-jekyll -y

RUN useradd -m userman

COPY --chown=userman:userman blog /home/userman/blog

ENTRYPOINT ["su","userman","-c","cd /home/userman/blog && bundle exec jekyll serve"]

