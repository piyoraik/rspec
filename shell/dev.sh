#!/bin/bash
FOLDER=bookers
git clone $@ $FOLDER
cd $FOLDER
bundle install
rails db:migrate RAILS_ENV=development
rails s -b 0.0.0.0