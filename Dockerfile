### Kibana does not support the current Node.js version v10.18.0. Please use Node.js v10.19.0.
FROM node:10.19.0-alpine3.11
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG KIBANA_VERSION=7.6.2
ARG TARBALL_ASC="https://artifacts.elastic.co/downloads/kibana/kibana-oss-${KIBANA_VERSION}-linux-x86_64.tar.gz.asc"
### https://artifacts.elastic.co/downloads/kibana/kibana-oss-7.6.2-linux-x86_64.tar.gz.sha512
ARG TARBALL_SHA="639119273e0184640cf25513dd29633939c4bdc173e6577d377d60503db68989980fe09829fad8ba0862695dd7f79fd7dbd0102c3c2f9eb5e762071579a3d424"
ARG GPG_KEY="46095ACC8548582C1A2699A9D27D666CD88E42B4"

ENV PATH=/usr/share/kibana/bin:$PATH

RUN apk add --no-cache bash su-exec ;\
    apk add --no-cache -t .build-deps ca-certificates gnupg openssl ;\
    set -ex ;\
    wget -O /tmp/kibana.tar.gz https://artifacts.elastic.co/downloads/kibana/kibana-oss-${KIBANA_VERSION}-linux-x86_64.tar.gz ;\
    if [ "$TARBALL_SHA" ]; then \
      echo "$TARBALL_SHA  /tmp/kibana.tar.gz" | sha512sum -c - ;\
    fi ;\
    if [ "$TARBALL_ASC" ]; then \
      wget -O /tmp/kibana.tar.gz.asc "$TARBALL_ASC" ;\
      export GNUPGHOME="$(mktemp -d)"; \
      ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" \
      || gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" \
      || gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY" ) ;\
      gpg --batch --verify /tmp/kibana.tar.gz.asc /tmp/kibana.tar.gz ;\
      rm -rf "$GNUPGHOME" || true ;\
    fi ;\
    tar -xf /tmp/kibana.tar.gz -C /tmp/ ;\
    mv /tmp/kibana-${KIBANA_VERSION}-linux-x86_64 /usr/share/kibana ;\
    adduser -DH -s /sbin/nologin kibana ;\
    # usr alpine nodejs and not bundled version
    bundled='NODE="${DIR}/node/bin/node"' ;\
    alpine_node='NODE="/usr/local/bin/node"' ;\
    sed -i "s|$bundled|$alpine_node|g" /usr/share/kibana/bin/kibana-plugin ;\
    sed -i "s|$bundled|$alpine_node|g" /usr/share/kibana/bin/kibana ;\
    rm -rf /usr/share/kibana/node ;\
    chown -R kibana:kibana /usr/share/kibana ;\
    apk del --purge .build-deps ;\
    rm -rf /tmp/* /var/cache/apk/*

# Fixing CVE-2019-1551
RUN apk add --upgrade --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main openssl

ADD data/ /

RUN chmod +x /*.sh

WORKDIR /usr/share/kibana

EXPOSE 5601

ENTRYPOINT ["/kibana-entrypoint.sh"]

CMD ["kibana"]
