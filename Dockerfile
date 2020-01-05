FROM emanuelmoraesdev/python3-env:1.1-alpine-default
WORKDIR /usr/src/app
ADD . .
RUN mkdir -p /usr/src/sh && \
    cp -r sh/* /usr/src/sh && \
    chmod +x /usr/src/sh/*.sh
CMD [ "sh", "/usr/src/sh/prod.sh" ]