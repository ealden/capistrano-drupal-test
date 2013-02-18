set :application, "capistrano-drupal-test"
set :use_sudo, false

set :scm, :git
set :repository, "git://github.com/ealden/capistrano-drupal-test.git"

server "localhost", :web, :app, :db, primary: true

set :deploy_to, "/srv/capistrano-drupal-test"
set :deploy_via, :remote_cache
set :port, 2222
set :user, "vagrant"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup"
