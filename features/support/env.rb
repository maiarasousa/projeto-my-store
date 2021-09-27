require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require 'pry'
require 'faker'
require 'allure-cucumber'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "https://marcelodebittencourt.com/demoprestashop/"
  config.default_max_wait_time = 30
end

AllureCucumber.configure do |config|
  config.clean_results_directory = true
end