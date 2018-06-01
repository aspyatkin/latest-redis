id = 'latest-redis'
secret = ::ChefCookbook::Secret::Helper.new(node)

node.default['redisio']['version'] = node[id]['version']
node.default['redisio']['servers'] = [
  {
    name: nil,
    address: node[id]['listen']['address'],
    port: node[id]['listen']['port'],
    requirepass: secret.get('redis:password', required: false, default: nil)
  }
]

include_recipe 'redisio'
include_recipe 'redisio::enable'
