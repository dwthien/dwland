Sidekiq.configure_server do |config|
  config.redis = { :url => Figaro.env.redis_sidekiq_url!, :namespace => 'sidekiq' }
end
Sidekiq.configure_client do |config|
  config.redis = { :url => Figaro.env.redis_sidekiq_url!, :namespace => 'sidekiq' }
end
