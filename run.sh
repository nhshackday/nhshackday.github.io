#!/bin/bash
set -e
gem install bundler && \
    bundle install && \
    bundle exec jekyll serve  --host 0.0.0.0 --force_polling --livereload --verbose
exec "$@"
