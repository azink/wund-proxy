#!/usr/bin/env ruby

# wund-proxy.rb
# listens on port 8000 for requests from Ambient Weather ObserverIP
# Forwards the request to wunderground via HTTPS

require 'webrick'
require 'open-uri'

server = WEBrick::HTTPServer.new :Port => 8000

server.mount_proc '/weatherstation' do |req, res|
  wund_url = req.request_uri.to_s.gsub(/http:\/\/[^\/]+/, 'https://rtupdate.wunderground.com')
  wbody = open(wund_url).read
  puts "** Wunderground Response: #{wbody}"
  res.body = wbody
end

server.start
