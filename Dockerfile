FROM alpine:3.8

MAINTAINER Isaac Gittins

WORKDIR /src

RUN apk add --no-cache nodejs npm

RUN npm i -g eslint prettier eslint-plugin-prettier eslint-config-prettier \
             eslint-config-airbnb-base eslint-plugin-import && \
    rm -rf /root/.npm/_cacache

ENTRYPOINT ["eslint"]
CMD ["-h"]
