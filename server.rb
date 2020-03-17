require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do
  say = Freeclimb::Say.new(text:'Hello, World!')
  script = Freeclimb::PerclScript.new(commands:[say])
  Freeclimb::percl_to_json(script)
end