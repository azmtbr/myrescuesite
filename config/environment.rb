# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Petfinder.configure do |config|
  config.api_key = 'your_api_key'
  config.api_secret = 'your_api_secret'
end
petfinder = Petfinder::Client.new
