FROM ubuntu:latest

RUN apt update && \
    apt install --assume-yes --no-install-recommends\
      build-essential \
      ca-certificates \
      curl \
      file \
      git \
      locales \
      procps \
      rsync \
      sudo \
      zsh \
    && locale-gen en_GB.UTF-8 \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER ubuntu
WORKDIR /home/ubuntu
ENV SHELL=/bin/zsh
SHELL ["/bin/zsh", "-c"]

COPY / ./dotfiles
RUN cd ./dotfiles && ./install
RUN sudo rm -r ./dotfiles

ENTRYPOINT [ "/bin/zsh" ]
