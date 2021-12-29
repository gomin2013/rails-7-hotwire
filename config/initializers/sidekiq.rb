require 'sidekiq/web'

# Sidekiq::Web.set :sessions, false

Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDIS_URL'], db: 1 }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDIS_URL'], db: 1 }
end
