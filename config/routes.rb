Rails.application.routes.draw do
  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  namespace :admin do
    resources :customers
    resources :payment_sources
    resources :purchases
    resources :charges
    resources :billing_informations
    resources :events

    root to: 'customers#index'
  end

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(
      ::Digest::SHA256.hexdigest(username),
      ::Digest::SHA256.hexdigest(ENV['SIDEKIQ_USERNAME'])
    ) &
      ActiveSupport::SecurityUtils.secure_compare(
        ::Digest::SHA256.hexdigest(password),
        ::Digest::SHA256.hexdigest(ENV['SIDEKIQ_PASSWORD'])
      )
  end

  mount Sidekiq::Web, at: '/sidekiq'
end
