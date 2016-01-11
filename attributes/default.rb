id = 'latest-redis'

default[id][:version] = '3.0.6'
default[id][:listen][:address] = '127.0.0.1'
default[id][:listen][:port] = 6379

if node['platform'] == 'ubuntu' && Gem::Version.new(node['platform_version']) >= Gem::Version.new('15.10')
  default[:redisio][:job_control] = 'systemd'
end
