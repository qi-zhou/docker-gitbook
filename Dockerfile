FROM ubuntu:16.04
MAINTAINER "Jack Zhou<zqbx81@gmail.com>"

RUN apt-get -y update

ARG VERSION=2.7.6

LABEL version=$VERSION

RUN apt-get install -y --no-install-recommends curl git calibre && \
	curl -sL https://deb.nodesource.com/setup | bash - && \
		apt-get install -y nodejs && \
		bash && \
		npm install -g gitbook-cli && \
		gitbook fetch ${version} && \
		npm cache clear && \
		rm -rf /tmp/*

ENV BOOKDIR /gitbook

WORKDIR $BOOKDIR

VOLUME $BOOKDIR

EXPOSE 4000

CMD ["gitbook", "--help"]
