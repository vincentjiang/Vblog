if Rails.env.production?
  source 'https://rubygems.org'
else
  source 'https://ruby.taobao.org'
end

ruby '2.2.0'

gem 'rails', '4.2.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sass-rails', '~> 5.0'
gem 'autoprefixer-rails'
gem 'bootstrap-sass', '~> 3.3.3'
gem 'font-awesome-sass', '~> 4.2.0'
gem 'bootstrap_flash_messages'
gem "slim-rails"
gem 'bcrypt', '~> 3.1.7'
gem "figaro"
gem 'kaminari'  #分页
gem "tabs_on_rails"
gem 'carrierwave' #图片上传
gem 'sdoc', '~> 0.4.0', group: :doc

# Use puma as the app server
gem 'puma'
gem 'foreman'

group :development, :test do
  gem 'mysql2'
  gem 'byebug'
  gem "better_errors"
  gem 'spring'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'web-console', '~> 2.0'
  gem 'capybara'
  gem 'database_cleaner'
  gem "launchy"
  gem "selenium-webdriver"
end

# Deploy to heroku, so use pg as database
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
