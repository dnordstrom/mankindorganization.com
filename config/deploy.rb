require 'bundler/capistrano'

set :application, "mankindorganization.com"
set :repository,  "github.com:dnordstrom/mankindorganization.com.git"

set :scm, :git
set :user, 'dnordstrom'
set :deploy_to, "/var/www/vhosts/mankindorganization.com"
set :deploy_via, :remote_cache

server "niroot.com", :app, :web, :db

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
