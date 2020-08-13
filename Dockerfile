FROM emanuelmoraesdev/python3-env:1.0-alpine-wscrap-venv
WORKDIR /usr/src/app
ADD . .
RUN mkdir -p /usr/src/sh && \
    cp -r sh/* /usr/src/sh && \
    chmod +x /usr/src/sh/*.sh
ENTRYPOINT [ "sh", "/usr/src/sh/prod.sh" ]