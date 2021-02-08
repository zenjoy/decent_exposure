source "https://rubygems.org"

gemspec

rails_version_env = ENV["RAILS_VERSION"] || "default"
rails_version = case rails_version_env
when "master"
  {github: "rails/rails"}
when "default"
  "~> 4.2.x"
else
  "~> #{rails_version_env}"
end

sqlite_version = case rails_version_env
when '6.0'
  '~> 1.4'
else
  '~> 1.3.6'
end

gem 'pry'
gem 'rails', rails_version
gem 'sqlite3', '~> 1.3.6'

platforms :rbx do
  gem 'racc'
  gem 'rubysl'
end
