FROM centos:7

RUN set -x && \
    yum install -y epel-release && \
    yum install -y nginx && \
    sed -i -e "s/index  index.html index.htm/proxy_pass http:\/\/ip-api.com\/json/" \
        /etc/nginx/conf.d/default.conf && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
