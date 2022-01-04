#!/bin/bash
FOLDER=bookers
git clone $@ $FOLDER
cd $FOLDER
bundle install --without=development
rails db:migrate RAILS_ENV=development
rails s -b 0.0.0.0