#!/bin/bash
source /var/.cloud66_env
cd $RAILS_STACK_PATH
bundle exec rake secret > config/initializers/secret_token.rb
bundle exec rake db:mongoid:create_indexes
bundle exec rake db:seed