FROM ubuntu:latest

RUN apt update
RUN apt install -y software-properties-common
RUN apt install -y build-essential
RUN apt install -y curl git wget
RUN apt install -y tmux

RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
RUN apt install -y nodejs

RUN add-apt-repository ppa:neovim-ppa/unstable
RUN apt update
RUN apt install -y neovim

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

ENV TERM=xterm-256color

CMD ["sleep", "infinity"]
