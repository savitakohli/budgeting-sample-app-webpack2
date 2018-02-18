require "json"
require "selenium-webdriver"
require "rspec"
require 'rspec/support'
gem "test-unit"
require "test/unit"
include Test::Unit::Assertions

include RSpec::Expectations

@driver = Selenium::WebDriver::Chrome.driver_path="c:/webdriver/chromedriver.exe"

@driver = Selenium::WebDriver.for :chrome
   
@driver.get "http://localhost:3000"
    (@driver.title).should == "Budgeting App - Educational React App"
    @driver.find_element(:link, "Reports").click
    @driver.find_element(:link, "Spending by Category").click
    @driver.find_element(:link, "Budget").click
    @driver.find_element(:link, "Reports").click
    @driver.find_element(:link, "Inflow vs Outflow").click
    @driver.find_element(:link, "Budget").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "categoryId")).select_by(:text, "Gifting")
    @driver.find_element(:name, "description").clear
    @driver.find_element(:name, "description").send_keys "Birthday gift"
    @driver.find_element(:name, "value").clear
    @driver.find_element(:name, "value").send_keys "200.00"
    @driver.find_element(:css, "button[type=\"submit\"]").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "categoryId")).select_by(:text, "Home")
    @driver.find_element(:name, "description").clear
    @driver.find_element(:name, "description").send_keys "Rent"
    @driver.find_element(:name, "value").clear
    @driver.find_element(:name, "value").send_keys "250"
    @driver.find_element(:css, "button[type=\"submit\"]").click
    @driver.find_element(:css, "button[type=\"submit\"]").click
    @driver.find_element(:name, "value").clear
    @driver.find_element(:name, "value").send_keys "250.73"
    @driver.find_element(:css, "button[type=\"submit\"]").click
    @driver.find_element(:name, "value").clear
    @driver.find_element(:name, "value").send_keys "250.00"
    @driver.find_element(:css, "button[type=\"submit\"]").click
    @driver.find_element(:name, "value").clear
    @driver.find_element(:name, "value").send_keys "250"
    @driver.find_element(:css, "button[type=\"submit\"]").click
    assert_equal "$6,802.00\nTotal Inflow\n-\n$5,788.80\nTotal Outflow\n=\n$1,013.20\nWorking Balance", @driver.find_element(:css, "div.components-Balance-style-balanceRowContainer").text
    B_Inflow = @driver.find_element(:css, "div.components-Balance-style-balanceItem").text
    @driver.find_element(:link, "Reports").click
    R_Inflow = @driver.find_element(:css, "text.components-StackedChart-styles-value").text
    puts B_Inflow
    puts R_Inflow
    @driver.find_element(:link, "Spending by Category").click
    @driver.find_element(:link, "Inflow vs Outflow").click
    @driver.find_element(:link, "Spending by Category").click

  