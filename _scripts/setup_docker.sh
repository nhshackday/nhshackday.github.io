#!/bin/bash
set -e
gem install bundler -v 1.17.1 && \
    bundle _1.17.1_ install && \
    bundle _1.17.1_ exec jekyll serve  --host 0.0.0.0 --force_polling --livereload --verbose
exec "$@"
