require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do
  say = Percl::Say.new('Hello, World!')
  script = Percl::Script.new
  script.add(say)
  script.to_json
end