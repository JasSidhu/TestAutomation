require 'rspec'
require 'rubygems'
require 'selenium-webdriver'

Dir['./spec/helpers/**/*.rb'].each { |file| require file }

RSpec.configure do |config|

  config.before(:each) do |example|
    # default browser is chrome; others can passed as variables
    case ENV['browser'] ||= 'chrome'
      when 'chrome'
        @driver = Selenium::WebDriver.for :chrome
      when 'firefox'
        @driver = Selenium::WebDriver.for :firefox
    end
    ENV['base_url'] = 'https://www.just-eat.com'
    @driver.get ENV['base_url']
  end

  config.before(:each) do
    @driver.manage.delete_all_cookies
  end


  config.after(:each) do |example|
    @driver.quit
  end
end
