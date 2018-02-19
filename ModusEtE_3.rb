require "json"
require "selenium-webdriver"
require "rspec"
require 'rspec/support'
gem "test-unit"
require "test/unit"
require "verify"
include Test::Unit::Assertions

include RSpec::Expectations

def setup
  begin
  puts "Starting Browser .."
  @dirver = Selenium::WebDriver::Chrome.driver_path =  "c:/webdriver/chromedriver.exe"
  @driver = Selenium::WebDriver.for :chrome
  @driver.get "http://localhost:3000"
   puts "call from setup"
  rescue => err
    puts "Failed to start Browser"
  end
 
 

def teardown
    @driver.quit
    assert_equal [], @verification_errors
  end
  
  def Assert_Title()
    puts "Starting Assert_Title ..."
  end
   begin
  return (assert_equal "Budgeting App - Educational React App", @driver.title)
   rescue =>err
     puts "assert_title failed  -title is not as expected"
  end
  end
  
def Assert_Reports()
  puts "Starting Assert_Reports ..."
    return (assert_equal "Report", @driver.find_element(:link, "Reports").text) 
  rescue =>err
       puts "Report: failed  - Asserted Value not found"
end
  
def Assert_Category()
  puts "Starting Assert_Category ..."
   begin
  return (assert_equal "Category", @driver.find_element(:css, "th").text)
     rescue =>err
          puts "Assert_Category failed  -Category is not as expected"
  end
  end
 
def Assert_Description()
  puts "Starting Assert_Description ..."
   begin
  return (assert_equal "Description", @driver.find_element(:xpath, "//div[@id='root']/main/section/table/thead/tr/th[2]").text)
   rescue =>err
          puts "Assert_Description: Failed  -Description is not as expected"
   end
 end

def Assert_Amount()
  puts "Starting Assert_Amount ..."
  begin
  return (assert_equal "Amount", @driver.find_element(:xpath, "//div[@id='root']/main/section/table/thead/tr/th[3]").text)
   puts "Assert_Amount: Passed"  
   rescue =>err
          puts "Assert_Amount: Failed  -Amount is not as expected"
  end
 end
 
 
def Assert_Grocery()
  puts "Starting Assert_Grocery ..."
   begin
  return (assert_equal "Groceries", @driver.find_element(:css, "div.components-BudgetGridRow-style-cellContent").text)
   puts "budget_Amount: Passed"  
   rescue =>err
          puts "Grocery_Item Test: Failed  -Actual is not as expected"
  end
 end
 
 
def Assert_Amt()
  puts "Starting Assert_Amt ..."
   begin
  return (assert_equal "-$423.34", @driver.find_element(:css, "td.components-BudgetGridRow-style-neg > div.components-BudgetGridRow-style-cellContent").text)
   puts "Assert_Amt: Passed"  
   rescue =>err
          puts "Assert_Amt: Failed  - Actual amount is not as expected"
  end
 end
 
 
def Assert_Inflow()
  puts "Starting Assert_Inflow ..."
   begin
  return (Assert_Inflow "Total Inflow", @driver.find_element(:css, "div.components-Balance-style-balanceTitle").text)
   puts "Assert_Inflow: Passed"  
   rescue =>err
        puts "Assert_Inflow: Failed  -Actual Result is not as expected"
  end
 end
 
def Assert_Outflow()
  puts "Starting Assert_Outflow ..."
   begin
  return (assert_equal "Total Outflow", @driver.find_element(:xpath, "//div[@id='root']/main/section/div/div/div[3]/div/div[2]").text)
   puts "Assert_Outflow: Passed"  
   rescue =>err
          puts "Assert_Outflow: Failed  -Actual Result is not as expected"
  end
 end
 
def Assert_WorkingBalance()
  puts "Starting Assert_WorkingBalance ..."
   begin
  return (assert_equal "Working Balance", @driver.find_element(:xpath, "//div[@id='root']/main/section/div/div/div[5]/div/div[2]").text)
   puts "Assert_WorkingBalance: Passed"  
   rescue =>err
          puts "Assert_WorkingBalance: Failed  -Actual Result is not as expected"
  end
 end
 
def Assert_BalanceRow()
  puts "Starting Assert_BalanceRow ..."
   begin
  return (@driver.find_element(:css, "div.components-Balance-style-balanceRow").text)
   puts "Assert_BalanceRow: Passed"  
   rescue =>err
          puts "Assert_BalanceRow: Failed  -Actual Result is not as expected"
  end
 end
 
 
def Lnk_Reports()
  puts "Starting Lnk_Reports ..."
    begin
  return @driver.find_element(:link, "Reports").click
   
   rescue =>err
          puts "Link to Reports: Failed  -Link does not exist as expected"
  end
 end
 
def Lnk_InflowOutflowReport()
  puts "Starting Lnk_InflowOutflowReport ..."
    begin
  return @driver.find_element(:link, "Inflow vs Outflow").click
   
   rescue =>err
          puts "Lnk_InflowOutflowReport: Failed  -Link does not exist as expected"
  end
 end
 
def Lnk_SpendByCategoryReport()
  puts "Starting Lnk_SpendByCategoryReport ..."
    begin
  return @driver.find_element(:link, "Spending by Category").click
   
   rescue =>err
          puts "Lnk_SpendByCategoryReport: Failed  -Link does not exist as expected"
  end
 end
 
def Lnk_Budget()
  puts "Starting Lnk_Budget ..."
    begin
  return @driver.find_element(:link, "Budget").click
   rescue =>err
          puts "Link to Budget: Failed  -Link does not exist as expected"
  end
 end
  
  begin
    puts "Starting tests...."
    setup
    Assert_Title()
    Assert_Reports()
    ##assert_equal "Reports", @driver.find_element(:link, "Reports").text
    Assert_Category()
    Assert_Description()
    Assert_Amount()
    Assert_Grocery()
    Assert_Amt()
    Assert_Inflow()
    Assert_Outflow()
    Assert_WorkingBalance()
    Assert_BalanceRow()
   Lnk_Reports()
    ##@driver.find_element(:link, "Reports").click
    Lnk_InflowOutflowReport()
    Lnk_SpendByCategoryReport()
    Lnk_Budget()
    puts "Finishing tests....."
 end
  