require 'sidekiq/web'

Rails.application.routes.draw do
  resources :rooms
  if Rails.env.production?
    Sidekiq::Web.use Rack::Auth::Basic do |n, p|
      n == Rails7Hotwire::Application.credentials.basic_auth_sidekiq[:name] &&
        p == Rails7Hotwire::Application.credentials.basic_auth_sidekiq[:password]
    end
  end

  mount Sidekiq::Web => '/sidekiq'
end
