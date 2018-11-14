# Dockerfile to build image to run GitHub Pages flavour Jekyll based on:
# https://github.com/github/pages-gem/blob/master/Dockerfile.alpine

FROM ruby:alpine

RUN apk update && apk add --no-cache \
    git \
    libstdc++

# Copy Gemfile from repository to install dependencies into image (more
# resilient to un-intentional changes than the more efficient hardcoded "echo"
# in the RUN statement below - commented out).
COPY Gemfile /src/

# One step to exclude .build_deps from docker cache
RUN apk update && apk add --no-cache --virtual .build_deps \
    make \
    build-base && \
    # mkdir /src && \
    # echo -e "source 'https://rubygems.org' \ngem 'github-pages', group: :jekyll_plugins" > /src/Gemfile && \
    bundle install --gemfile=/src/Gemfile && \
    apk del .build_deps

VOLUME /src/nhshackday.github.io
WORKDIR /src/nhshackday.github.io

CMD ["jekyll", "serve", "-H", "0.0.0.0", "-P", "4000", "--force_polling"]
