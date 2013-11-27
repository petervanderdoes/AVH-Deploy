set :stage, :staging

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
role :app, %w{staging.foo.com}
role :web, %w{staging.foo.com}
role :db,  %w{staging.foo.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server 'staging.foo.com', user: 'deploy', roles: %w{web app db}, my_property: :my_value

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
# and/or per server
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
# setting per server overrides global ssh_options

# fetch(:default_env).merge!(rails_env: :production)

# Set the URL base where the application is being found
# set :url_base, 'http://staging.foo.com/wp-content/plugins/avh-plugin'
# set :url_base, 'http://staging.foo.com/wp-content/themes/avh-theme'
set :url_base, ''

# Set the DIR base where the application is being found
# set :dir_base, '/var/www/staging.foo.com/htdocs/wp-content/plugins/avh-plugin'
# set :dir_base, '/var/www/staging.foo.com/htdocs/wp-content/themes/avh-theme'
set :dir_base, ''

# Set the root directory where WordPress is located
# set :root_dir, '/var/www/staging.foo.com/htdocs/'
set :root_dir, ''

# Location where you want to deploy to
# set :deploy_to, '/var/capistrano/staging.foo.com/plugins/avh-plugin'
# set :deploy_to, '/var/capistrano/staging.foo.com/themes/avh-theme'
set :deploy_to, ''


set :deploy_via, :remote_cache
set :copy_exclude, %w(.git .gitmodules .DS_Store .gitignore)
set :keep_releases, 5

set :branch, 'staging'