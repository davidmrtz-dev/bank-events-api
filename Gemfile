source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'
gem 'bcrypt'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'bootstrap-sass'
gem 'devise', '~> 4.7', '>= 4.7.3'
gem 'faker'
gem 'paper_trail', '>= 11'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'redis'
gem 'sidekiq'
gem 'sidekiq-cron'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner-active_record'
  gem 'dotenv-rails'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'bullet'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'database_cleaner'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'administrate'
