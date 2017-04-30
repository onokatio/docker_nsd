FROM alpine:edge

RUN apk --no-cache --update add \
  nsd \
	&& mkdir -p /var/run/nsd \
	&& chown -R nsd:nsd /var/run/nsd

EXPOSE 53

CMD ["nsd","-d"]
