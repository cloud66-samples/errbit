#!/bin/bash
source /var/.cloud66_env
cd $RAILS_STACK_PATH
echo "Errbit::Application.config.secret_token = '$(bundle exec rake secret)'" > config/initializers/secret_token.rb
bundle exec rake db:mongoid:create_indexes
bundle exec rake db:seed