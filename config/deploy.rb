require 'bundler/capistrano'
set :application, "studentpages"
set :repository,  "git@github.com:ajonas04/StudentPages.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, 'jonas'
set :deploy_to, "/home/#{ user }/#{ application }"
set :use_sudo, false

default_run_options[:pty] = true

role :web, "96.8.123.76"                          # Your HTTP server, Apache/etc
role :app, "96.8.123.76"                          # This may be the same as your `Web` server
# role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
 task :start do ; end
 task :stop do ; end
 task :restart, :roles => :app, :except => { :no_release => true } do
   run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
 end
end