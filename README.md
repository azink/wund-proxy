# wund-proxy

## Purpose
Listens on port 8000 for requests from Ambient Weather ObserverIP and forwards the request to wunderground via HTTPS.  

That's it, really.

## Background
The ObserverIP does not support HTTPS and this protects the transmission over the internet.

## Usage
ruby wund-proxy.rb

May be run in the background or in a screen

Install firmware version 2.1.9 on the ObserverIP and change the target to the system running wund-proxy.rb.
