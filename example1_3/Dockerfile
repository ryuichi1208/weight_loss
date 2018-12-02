FROM debian:8
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
        slapd=2.4.40+dfsg-1+deb8u3 \
        ldap-utils=2.4.40+dfsg-1+deb8u3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY ./config/custom_inetorgperson.ldif /etc/ldap/schema/
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
