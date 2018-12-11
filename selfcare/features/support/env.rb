require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://localhost:7001/SelfCareManagerWEB/login.jsf'

end  

Capybara.default_max_wait_time = 5