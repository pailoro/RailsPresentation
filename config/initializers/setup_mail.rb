 # -*- encoding : utf-8 -*-
# config/initializers/setup_mail.rb
ActionMailer::Base.default_url_options[:host] = 'https://beepweb.herokuapp.com/'
ActionMailer::Base.raise_delivery_errors = true
#ActionMailer::Base.delivery_method = :sendmail #for dreamhost
#ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :user_name => 'app118856886@heroku.com',
  :password => 'wdbt7xmh8145',
  :domain => 'beepweb.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

