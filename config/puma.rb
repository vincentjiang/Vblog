workers Integer(ENV['WEB_CONCURRENCY'] || 2)
min_threads = Integer(ENV['MIN_THREADS'] || 4)
max_threads = Integer(ENV['MAX_THREADS'] || 20)
threads min_threads, max_threads

preload_app!

# puma on heroku use ENV['RACK_ENV'] to detect the environment.
if ENV['RACK_ENV'] == 'production'
  port ENV['PORT'] || 3000
else
  bind 'tcp://0.0.0.0:3000'
end
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # Valid on Rails up to 4.1 the initializer method of setting `pool` size
  ActiveSupport.on_load(:active_record) do
#    config = ActiveRecord::Base.configurations[Rails.env] || Rails.application.config.database_configuration[Rails.env]
#    config['pool'] = ENV['MAX_THREADS'] || 5
    ActiveRecord::Base.establish_connection
  end
end
