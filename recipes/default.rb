id = 'latest-redis'

node.default[:redisio][:version] = node[id][:version]
node.default[:redisio][:servers] = [
  {
    name: nil,
    address: node[id][:listen][:address],
    port: node[id][:listen][:port]
  }
]

include_recipe 'redisio'
include_recipe 'redisio::enable'
