FROM dockerfile/ubuntu

RUN \
	sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
	DEBIAN_FRONTEND=noninteractive apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y install memcached && \
	DEBIAN_FRONTEND=noninteractive apt-get clean && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /data

CMD /usr/bin/memcached -u root -v -m 64

EXPOSE 11211
