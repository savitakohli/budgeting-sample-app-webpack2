require "json"
require "selenium-webdriver"
require "rspec"
require 'rspec/support'
gem "test-unit"
require "test/unit"
require "verify"
include Test::Unit::Assertions

include RSpec::Expectations

@driver = Selenium::WebDriver::Chrome.driver_path="c:/webdriver/chromedriver.exe"

@driver = Selenium::WebDriver.for :chrome
   
@driver.get "http://localhost:3000"
  assert_equal "Budgeting App - Educational React App", @driver.title
  assert_equal "Reports", @driver.find_element(:link, "Reports").text
  assert_equal "Category", @driver.find_element(:css, "th").text
  assert_equal "Description", @driver.find_element(:xpath, "//div[@id='root']/main/section/table/thead/tr/th[2]").text
  assert_equal "Amount", @driver.find_element(:xpath, "//div[@id='root']/main/section/table/thead/tr/th[3]").text
  assert_equal "Groceries", @driver.find_element(:css, "div.components-BudgetGridRow-style-cellContent").text
  assert_equal "$423.34", @driver.find_element(:css, "td.components-BudgetGridRow-style-neg > div.components-BudgetGridRow-style-cellContent").text
  assert_equal "Total Inflow", @driver.find_element(:css, "div.components-Balance-style-balanceTitle").text
  assert_equal "Total Outflow", @driver.find_element(:xpath, "//div[@id='root']/main/section/div/div/div[3]/div/div[2]").text
  assert_equal "Working Balance", @driver.find_element(:xpath, "//div[@id='root']/main/section/div/div/div[5]/div/div[2]").text 
  Value1 = @driver.find_element(:css, "div.components-Balance-style-balanceRow").text
   @driver.find_element(:link, "Reports").click
   @driver.find_element(:link, "Inflow vs Outflow").click
   @driver.find_element(:link, "Spending by Category").click
   @driver.find_element(:link, "Inflow vs Outflow").click
   @driver.find_element(:link, "Spending by Category").click
   @driver.find_element(:link, "Budget").click
  