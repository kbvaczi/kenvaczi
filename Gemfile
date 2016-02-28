source 'https://rubygems.org'

ruby "2.3.0"

gem 'rails', '4.2.5.1'          
gem 'sass-rails', '~> 5.0'            # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'            # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0'        # Use CoffeeScript for .coffee assets and views

gem 'jquery-rails'                    # Use jquery as the JavaScript library
gem 'turbolinks'                      # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder', '~> 2.0'              # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sdoc', '~> 0.4.0', group: :doc   # bundle exec rake doc:rails generates the API under doc/api.

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'

gem 'honeypot-captcha', '~> 0.0.3'		# Honeypot captchas added to help prevent bots submitting forms	

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do  
  gem 'byebug'                        # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'sqlite3'                       # Use sqlite3 as the database for Active Record
  gem 'web-console', '~> 2.0'         # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring'                        # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

group :production do
  gem 'puma'                          # puma webserver recommended by Heroku
  gem 'pg'                            # postgresQL database for use on Heroku
  gem 'rails_12factor'                # Include 'rails_12factor' gem to enable all platform features
end

