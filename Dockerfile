FROM ruby:2.6-slim

ARG SLATE_URL=https://github.com/slatedocs/slate/archive/refs/tags/v2.11.0.zip
ARG SWAGGERUI_URL=https://github.com/swagger-api/swagger-ui/archive/refs/tags/v3.52.5.zip

WORKDIR /srv/slate

EXPOSE 4567

VOLUME /srv/slate/build

# Install Slate Docs
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
    && rm slate.zip \
    && gem install bundler \
    && bundle install 

# Install Swagger UI
RUN curl -L $SWAGGERUI_URL --output swagger.zip \
    && unzip swagger.zip \
    && cp -rfv swagger-ui-*/dist source/swagger/ \
    && rm -rfv swagger-ui-*/ \
    && rm swagger.zip \
    && sed -i.bak -e 's|https://petstore.swagger.io/v2/swagger.json|../openapi.json|' source/swagger/index.html

# Fix Swagger UI javascript files causing issues in Slate build
RUN sed -i.bak -e 's|activate :minify_css|# activate :minify_css|' config.rb \
    && sed -i.bak -e 's|activate :minify_javascript|# activate :minify_javascript|' config.rb

COPY source source

# Install widdershins, which generates Slate markdown from OpenAPI spec
RUN npm install -g widdershins
RUN widdershins --environment ./source/env.json ./source/openapi.json -o ./source/index.html.md

RUN chmod +x /srv/slate/slate.sh

ENTRYPOINT ["/srv/slate/slate.sh"]
CMD ["build"]
