# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

# To use carrierwave with Heroku
use Rack::Static, :urls => ['/carrierwave'], :root => 'tmp'

run Portfolio::Application
