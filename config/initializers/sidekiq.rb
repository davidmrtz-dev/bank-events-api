Sidekiq.configure_server do |config|
  config.redis = { url: "redis://#{ENV['REDIS_ENDPOINT']}:6379/#{ENV['SIDEKIQ_DB']}" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://#{ENV['REDIS_ENDPOINT']}:6379/#{ENV['SIDEKIQ_DB']}" }
end

schedule_file = 'config/schedule.yml'
Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) if File.exist?(schedule_file) && Sidekiq.server?
