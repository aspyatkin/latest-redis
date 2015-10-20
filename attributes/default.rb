override['redisio']['version'] = '3.0.5'

node.from_file(run_context.resolve_attribute('redisio', 'default'))
