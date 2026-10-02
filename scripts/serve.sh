#!/usr/bin/env bash
# Local preview: http://localhost:4000/app-legal/
set -euo pipefail
cd "$(dirname "$0")/.."
export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
export BUNDLE_PATH="${BUNDLE_PATH:-vendor/bundle}"
export RUBYOPT="-r$PWD/scripts/ruby_compat.rb"
bundle install --quiet
bundle exec jekyll serve --livereload "$@"
