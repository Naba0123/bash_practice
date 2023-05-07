FROM ubuntu:20.04

# unminimize
RUN yes | unminimize

# set locale
RUN apt update && apt install -y locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LANG ja_JP.utf8

# man
RUN apt update && apt install -y manpages-ja manpages-ja-dev language-pack-ja man
RUN update-locale LANG=ja_JP.UTF-8

# other
RUN apt install -y less gawk tree git parallel

WORKDIR /root
