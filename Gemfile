source "https://rubygems.org"

gem "rails", "~> 8.0.3"
gem "propshaft"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem "tailwindcss-rails"

# image_processing is optional if you use Active Storage
# gem "image_processing", "~> 1.2"

gem "devise"
gem "dotenv-rails", groups: [:development, :test]
gem "rspec-rails", "~> 8.0", groups: [:development, :test]

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "factory_bot_rails"
  gem "faker"
  gem "sqlite3"
end

group :development do
  gem "web-console"
end

group :test do
  gem "shoulda-matchers", "~> 6.5"
end

group :production do 
  gem 'pg'
end 
