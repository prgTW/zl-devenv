FROM dockerfile/ubuntu

RUN \
	cd /tmp && \
	curl -L http://github.com/kr/beanstalkd/archive/v1.10.tar.gz > beanstalkd.tar.gz && \
	tar -xzf beanstalkd.tar.gz && \
	cd /tmp/beanstalkd-1.10/ && \
	make && \
	cp /tmp/beanstalkd-1.10/beanstalkd /usr/local/bin && \
	rm -rf /tmp/beanstalkd.tar.gz && \
	rm -rf /tmp/beanstalkd-1.10

VOLUME ["/data/wal"]

WORKDIR /data

CMD /usr/local/bin/beanstalkd -V -n -b /data/wal

EXPOSE 11300
