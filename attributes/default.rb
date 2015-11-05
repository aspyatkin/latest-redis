override['redisio']['version'] = '3.0.5'
override['redisio']['servers'] = [
    { name: '', address: '127.0.0.1', port: 6379 }
]

node.from_file(run_context.resolve_attribute('redisio', 'default'))
