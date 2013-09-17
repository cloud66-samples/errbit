#!/bin/bash
cd $RAILS_STACK_PATH
echo "host: $ERRBIT_HOST
email_from: $MAILER_SENDER
smtp_settings:
	:address: $SMTP_ADDRESS
    :domain: $SMTP_DOMAIN
    :port: $SMTP_PORT
    :authentication: :plain
    :enable_starttls_auto: "true"
    :user_name: $SMTP_USERNAME
    :password: $SMTP_PASSWORD" >> config/config.yml