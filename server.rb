require 'sinatra'
require 'freeclimb'
require 'json'

set :port, ENV['PORT'] || 3000

post '/voice' do
  say = Freeclimb::Say.new(text:'Hello, World!')
  script = Freeclimb::PerclScript.new(commands:[say])
  script.to_json()
end