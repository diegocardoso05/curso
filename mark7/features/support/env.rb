require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://mark7.herokuapp.com'
  ENV['no_proxy'] = "127.0.0.1"
end  

Capybara.default_max_wait_time = 2

