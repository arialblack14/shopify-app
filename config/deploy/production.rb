# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}



# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }


# role :app, %w{root@209.97.136.19}
# role :web, %w{root@209.97.136.19}
# role :db,  %w{root@209.97.136.19}

# server '209.97.136.19', users: 'root', roles: %w{web app}, my_property: :my_value
# set :default_shell, "/bin/bash -l"

# server '209.97.136.19',
#        user: 'root',
#        roles: %w{web app db},
#        ssh_options: {
#            user: 'root', # overrides user setting above
#            forward_agent: true,
#            auth_methods: %w(publickey)
#        }
# namespace :paths do
#   desc "Link paths of required files"
#   task :link_paths do
#     #run "ln -sf #{shared_path}/database.yml #{release_path}/config/database.yml"
#     run "ln -sf #{shared_path}/uploads #{release_path}/public/uploads"
#   end
# end

# after 'deploy:publishing', 'deploy:restart'
# namespace :deploy do
#   task :restart do
#     on roles(:app) do
#       execute "cd #{current_path} && /usr/local/rvm/bin/rvm use 2.3.6-p0@cc-appointment do /etc/init.d/unicorn stop"
#       execute "cd #{current_path} && /usr/local/rvm/bin/rvm use 2.3.6-p0@cc-appointment do /etc/init.d/unicorn start"
#     end
#   end
# end