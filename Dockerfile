ARG version=latest
FROM headscale/headscale:${version}-alpine

RUN addgroup -S headscale --gid 1000 && adduser -S headscale --uid 1000 -G headscale

RUN mkdir -p /etc/headscale && mkdir -p /var/lib/headscale && mkdir -p /var/run/headscale

RUN chown -R headscale:headscale /etc/headscale
RUN chown -R headscale:headscale /var/lib/headscale
RUN chown -R headscale:headscale /var/run/headscale