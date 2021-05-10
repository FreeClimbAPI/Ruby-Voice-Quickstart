require 'sinatra'
require 'freeclimb'
require 'json'

signingSecret = ENV['SIGNING_SECRET']

post '/voice' do
  FreeClimb::Utils.verify_request(request.body.string, request.env["HTTP_FREECLIMB_SIGNATURE"], signingSecret)
  say = Freeclimb::Say.new(text:'Hello, World!')
  script = Freeclimb::PerclScript.new(commands:[say])
  Freeclimb::percl_to_json(script)
end
