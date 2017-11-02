FROM atlassian/bitbucket-server:4.14

USER root

# Install our required packages
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends openssh-client busybox \
    && apt-get clean autoclean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/

USER ${RUN_USER}:${RUN_GROUP}

