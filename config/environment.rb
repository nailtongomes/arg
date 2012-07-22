ActionMailer::Base.smtp_settings = {
  :user_name => "app5625600@heroku.com",
  :password => "carcara1he",
  :domain => "argumentos.herokuapp.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Arg::Application.initialize!