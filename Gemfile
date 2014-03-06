source 'https://rubygems.org'

gem 'rails', '4.0.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'sorcery'
gem 'therubyracer'
gem 'angularjs-rails'
gem 'jbuilder'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # gem 'sass-rails',   '~> 4.0.0'
  gem 'less-rails'
  gem 'execjs'
  gem 'coffee-rails', '~> 4.0.0'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'colorize_unpermitted_parameters'
  gem 'rspec-rails'
  gem 'quiet_assets'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end

group :development, :test do
  gem 'spring'
end

group :production do
  gem 'unicorn'
end
