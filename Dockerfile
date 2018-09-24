FROM alpine:latest

USER root

ENV TERM xterm

RUN apk update && \
	apk upgrade && \
	apk add --no-cache \
		ca-certificates \
		curl \
		bash \
		bash-completion \
		vim \
		tar \
		wget \
		tzdata && \
	cp /usr/share/zoneinfo/Europe/Rome /etc/localtime

CMD ["bash"]
