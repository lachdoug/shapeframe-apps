require 'sinatra'
require 'yaml'

set :bind, '0.0.0.0'
set :port, 3000

config = YAML.load_file("config.yaml")
name = config["name"]
age = config["age"]

get '/' do
    "Hello, #{name} (#{age})"
end
