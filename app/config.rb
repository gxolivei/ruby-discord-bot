require 'active_record'
require 'dotenv'

Dotenv.load

database_config = {
  'adapter' => 'postgresql',
  'encoding' => 'unicode',
  'database' => ENV['POSTGRES_DB'],
  'pool' => 5,
  'username' => ENV['POSTGRES_USER'],
  'password' => ENV['POSTGRES_PASSWORD'],
  'host' => ENV['POSTGRES_HOST'],
  'port' => ENV['POSTGRES_PORT']
}

ActiveRecord::Base.establish_connection(database_config)
