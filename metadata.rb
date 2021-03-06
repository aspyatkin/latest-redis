name 'latest-redis'
maintainer 'Alexander Pyatkin'
maintainer_email 'aspyatkin@gmail.com'
license 'MIT'
description 'Installs and configures redis'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.3.2'

recipe 'latest-redis', 'Installs and configures redis'
depends 'redisio', '~> 2.7.1'
depends 'secret', '~> 1.0.0'
