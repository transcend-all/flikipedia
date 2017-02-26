source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
    gem 'sqlite3'
    gem 'spring-watcher-listen', '~> 2.0.0'
    gem 'listen', '~> 3.0.5'
    gem 'web-console', '>= 3.3.0'
end

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'bootstrap-sass'
gem 'figaro'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'spring'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rails-controller-testing'
end

gem 'puma', '~> 3.0'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise'
gem 'pundit'
