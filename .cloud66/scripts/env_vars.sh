#!/bin/bash
cd $RAILS_STACK_PATH
echo "email_from: ENV['MAILER_SENDER']
smtp_settings:
	:address: ENV['SMTP_ADDRESS']
    :domain: ENV['SMTP_DOMAIN']
    :port: ENV['SMTP_PORT']
    :authentication: :plain
    :enable_starttls_auto: "true"
    :user_name: ENV['SMTP_USERNAME']
    :password: ENV['SMTP_PASSWORD']" >> config/config.yml