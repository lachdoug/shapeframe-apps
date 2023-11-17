require 'sinatra'
require 'yaml'

set :bind, '0.0.0.0'
set :port, 3000

puts Dir.getwd
puts Dir.entries(".")
puts "Woooo!!!!"

config = YAML.load_file("config.yaml")


get '/' do
    "Hello, #{config["name"]}"
end
