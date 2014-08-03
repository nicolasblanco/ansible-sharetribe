set :stage, :production

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
role :app, ["deploy@#{ENV['HOST']}"]
role :web, ["deploy@#{ENV['HOST']}"]
role :db,  ["deploy@#{ENV['HOST']}"]

set :assets_roles, [:app]
