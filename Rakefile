desc 'Start server'
task :start do
    puts "\nWelcome to FreeClimb!\n\n"
    puts "Your web server is listening at http://127.0.0.1:3000"
    puts "View an example PerCL JSON response to FreeClimb at http://127.0.0.1:3000/incomingCall\n\n"
    puts "Your NEXT STEP is to use NGROK to proxy HTTP traffic to this local web server."
    puts "\t1. In NGROK, configure the dynamic url to proxy to http://127.0.0.1:3000"
    puts "\t2. Using the Dashboard or API, set your FreeClimb Application Voice Url to the dynamic endpoint NGROK generated\n\n"

    %x[ruby server.rb]
end