#!/usr/bin/env puma

workers 1
threads 4, 8

environment ENV.fetch("RAILS_ENV") { "production" }
daemonize true

port        ENV.fetch("PORT") { 3000 }

app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"

# Set master PID and state locations
pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"
rackup "#{app_dir}/config.ru"

stdout_redirect "#{shared_dir}/log/puma.stdout.log", "#{shared_dir}/log/puma.stderr.log", true


#bind 'unix://tmp/sockets/puma.sock'
bind "unix://#{shared_dir}/sockets/puma.sock"


# on_worker_boot do
#   puts 'On worker boot...'
# end