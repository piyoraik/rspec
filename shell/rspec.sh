#!/bin/bash
FOLDER=bookers
git clone $@ $FOLDER
cd $FOLDER
bundle install --without=development
rails db:migrate RAILS_ENV=test
bundle exec rspec spec/ --format documentation