FROM --platform=linux/amd64 node:18.15.0-slim as node
FROM --platform=linux/amd64 ubuntu:focal-20220404 as base

ARG WORKSPACE="/app"
ARG USER="node"

COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/bin /usr/local/bin

RUN groupadd --gid 1000 ${USER} \
    && useradd --uid 1000 --gid ${USER} --shell /bin/bash --create-home ${USER} \
    && mkdir ${WORKSPACE} \
    && chown -R ${USER}:${USER} ${WORKSPACE}

WORKDIR ${WORKSPACE}
USER ${USER}


FROM base as dev


FROM dev as dev-container
USER root
RUN apt-get update -y \
    && apt-get upgrade -y -qq --no-install-recommends \
    # Support git integration in VSCode.
    git \
    # Install CLI tools for mongo and redis.
    mongodb redis-tools \
    # Enable passwordless sudo.
    sudo \
    && usermod -aG sudo ${USER} \
    && echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" | sudo EDITOR='tee -a' visudo
USER ${USER}
