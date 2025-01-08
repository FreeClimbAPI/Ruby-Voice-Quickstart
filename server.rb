require 'sinatra'
require 'freeclimb'
require 'json'

set :bind, '0.0.0.0'

set :port, ENV['PORT'] || 3000

post '/incomingCall' do
  say = Freeclimb::Say.new(text:'Hello, World!')
  script = Freeclimb::PerclScript.new(commands:[say])
  script.to_json()
end

get '/incomingCall' do
  say = Freeclimb::Say.new(text:'Hello, World!')
  script = Freeclimb::PerclScript.new(commands:[say])
  script.to_json()
end

# Liveness probe endpoint
get '/live' do
  content_type :json
  { status: 'live' }.to_json
end

# Readiness probe endpoint
get '/ready' do
  content_type :json
  { status: 'ready' }.to_json
end
