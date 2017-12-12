require 'selenium-webdriver'
require 'capybara/dsl'
require 'pry'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

include Capybara::DSL

visit('https://www.google.com')

binding.pry
