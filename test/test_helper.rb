ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include Warden::Test::Helpers
  Warden.test_mode!
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => { args: %w(headless disable-gpu) + [ 'window-size=1280,800' ] })
  Capybara::Selenium::Driver.new app, browser: :chrome, desired_capabilities: capabilities
end
Capybara.save_path = Rails.root.join('tmp/capybara')
Capybara.javascript_driver = :headless_chrome
Capybara.server_port = 31337
Capybara.app_host = "http://localhost:31337"

# Geocoder.configure(:lookup => :test)

# Geocoder::Lookup::Test.set_default_stub(
#   [
#     {
#       'latitude' => -23.5566614,
#       'longitude' => -46.6860885,
#       'address' => {
#         'road' => 'R. Gonçalo Afonso',
#         'house_number' => '',
#         'postcode' => '05436',
#         'town' => 'São Paulo',
#       },
#       'type' => 'route',
#     }
#   ]
# )