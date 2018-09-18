id = 'latest-redis'
secret = ::ChefCookbook::Secret::Helper.new(node)

node.default['redisio']['version'] = node[id]['version']
node.default['redisio']['servers'] = [
  {
    name: nil,
    address: node[id]['listen']['address'],
    port: node[id]['listen']['port'],
    requirepass: secret.get(
      'redis:password',
      required: false,
      default: nil,
      prefix_fqdn: node[id]['secret']['prefix_fqdn'].nil? ? node['secret']['prefix_fqdn'] : node[id]['secret']['prefix_fqdn']
    )
  }
]

include_recipe 'redisio'
include_recipe 'redisio::enable'
