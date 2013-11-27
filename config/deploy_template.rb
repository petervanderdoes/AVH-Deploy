# Name of the application, do not use spaces!
# Best practice is to set this to the WordPress slug.
# set :application, 'avh-plugin'
# set :application, 'avh-theme'
set :application, ''

# The remote repository to fetch your application from
# set :repo_url, 'git@github.com:petervanderdoes/avh-plugin.git'
# set :repo_url, 'git@bitbucket.org:petervanderdoes/avh-theme.git'
set :repo_url, ''

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Capistrano v3 currently only supports git as a SCM. Submodules are not supported!.
set :scm, :git

# Set loglevel
set :log_level, :info

namespace :deploy do
  task :restart do
    # We don't restart a WordPress site, but the task is needed by Capistrano v3
  end
  after :finishing, 'deploy:cleanup'
end