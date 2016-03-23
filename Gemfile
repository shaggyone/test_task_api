source 'https://rubygems.org'

ruby "2.2.2"
gem 'rails', '4.2.6'
gem 'pg'

gem 'sdoc', '~> 0.4.0', group: :doc

#  Поскольку речь про api это всё не нужно. Впрочем, я так понимаю, они для девайся нужны?
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem "slim-rails"
gem 'materialize-sass'
gem 'jquery-validation-rails'
gem 'simple_form'

# По авторизации. Тут есть вопрос, нужно как то при помощи эндпойнта авторизовать,
# например, мобильного клиента. Или скрипт. Желательно без привлечения браузера.
# Впрочем принимаю с оговоркой, что в проекте, где ты будешь работать используется
# кастомная схема авторизации.
gem 'devise'
gem 'devise_token_auth'
gem 'omniauth'

gem "responders"
gem 'seed-fu'

# plaginate
gem 'will_paginate'
gem 'api-pagination'

group :development, :test do

  # test
  gem 'rspec-rails', '~> 3.4'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'launchy'
  gem "database_cleaner"
  gem 'faker'
  gem 'fuubar'
  gem 'json_spec'

  gem 'spring'
  gem 'spring-commands-rspec'

  # guard
  gem 'guard'
  gem 'guard-livereload'

  # debag
  gem "awesome_print", require:"ap"
  gem 'peek'
  gem 'meta_request'
  gem "better_errors"
  gem 'quiet_assets'
  gem "bullet"
  gem 'pry'

end
