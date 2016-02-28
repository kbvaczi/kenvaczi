ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address => ENV['EMAIL_SENDING_SERVER'],
  :port => 80,
  :domain => "kenvaczi.com",
  :user_name => ENV['EMAIL_SENDING_ADDRESS'],
  :password => ENV['EMAIL_SENDING_PASSWORD'],
  :authentication => :plain
}