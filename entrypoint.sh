#!/bin/bash
git clone $@ bookers
cd bookers
bundle install
rails db:migrate RAILS_ENV=test
bundle exec rspec spec/ --format documentation