#!/bin/bash
# dredd_server.sh
export RAILS_ENV=test
export LOG_LEVEL=info
bundle exec rails server --port=9865
