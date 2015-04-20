FROM ubuntu:14.04
MAINTAINER Soloman Weng "soloman1124@gmail.com"
ENV REFRESHED_AT 2015-04-20

WORKDIR /usr/root

RUN apt-get update
RUN apt-get install -y curl git vim zsh

RUN chsh -s `which zsh` && curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | zsh

CMD zsh
