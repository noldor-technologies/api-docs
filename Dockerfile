FROM ruby:2.6-slim

ARG SLATE_URL=https://github.com/slatedocs/slate/archive/refs/tags/v2.11.0.zip
ARG SWAGGERUI_URL=https://github.com/swagger-api/swagger-ui/archive/refs/tags/v3.52.5.zip

WORKDIR /srv/slate

EXPOSE 4567

VOLUME /srv/slate/build

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        git \
        nodejs \
        npm \
        curl \
        unzip \
    && curl -L $SLATE_URL --output slate.zip \
    && unzip slate.zip \
    && cp -rfv slate-*/* . \
    && rm -rf slate-*/ \
    && gem install bundler \
    && bundle install 

RUN curl -L $SWAGGERUI_URL --output swagger.zip \
    && unzip swagger.zip \
    && cp -rfv swagger-ui-*/dist source/swagger/ \
    && rm -rfv swagger-ui-*/ \
    && sed -i.bak -e 's_https://petstore.swagger.io/v2/swagger.json_../openapi.json_' source/swagger/index.html

RUN npm install -g widdershins

COPY source source

RUN widdershins --environment ./source/env.json ./source/openapi.json -o ./source/index.html.md

RUN chmod +x /srv/slate/slate.sh

ENTRYPOINT ["/srv/slate/slate.sh"]
CMD ["build"]
