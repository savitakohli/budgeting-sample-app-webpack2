3 Tests included here:
1.	ModusEtE.rb - positive
	a.Assertion of application title
	b.Assertion of Table Headers on Budge page
	c. Asserting the existence of ‘Total Inflow’, ‘Total Outflow’ and ‘Working Balance’ and their corresponding values
	d. Assert Link to Reports
	e. Click to links on Budget window and Reports Window
2.	ModusEtE_2.rb - positive
	a. Clicks on links on Budget window and Reports Window
	b. Adding new expense items on Budget page
	c. Adding new Income items on Budget page
	d. inflow, outflow and balance updates
	e. Reports windows updates
3.	ModusEtE_3 – To be failed
	a. Assert value is different from actual value
Usage: 
From command line run rb test files
Please note:
a.	Localhost port may be different. Please update accordingly
b.	Path to Chrome exe may be different. Please update accordingly

Test Plan: Budgeting Application
1.	Product under Test: Budgeting Application
2.	Test Requirements: 
a.	Budget: 
	i.	Asserting the existence of Table Headers
	ii.	Asserting the existence of ‘Total Inflow’, ‘Total Outflow’ and ‘Working Balance’ and their 	corresponding values
	iii.	Add New Expense and Validate new Total Outflow
	iv.	Add new Income and validate new Total Inflow
	v.	Update Income from existing sources and Validate new Total Inflow
	vi.	Update expense from existing expenses and Validate new Total Outflow
	vii.	Validate New Balance
		1.	Income < Expenses
		2.	Income = Expenses
		3.	Income > Expenses
	viii.	Neg: Non Numeric values in the amount field
	ix.	Neg: Different symbols with amount 
b.	Reports: Inflow Vs Outflow, Spending by Category
	i.	Inflow vs Outflow 
	ii.	Amounts shown in the legend
	iii.	Amounts/percentages shown in Spending by Category
c.	Navigation Tests:
	i.	Navigation between Budget and Reports pages
	ii.	Navigation within Budget page-Forward Navigation(Tab) and backward Navigation (shift + tab)
	iii.	Navigation within Reports page – Forward Navigation and backward Navigation

3.	Test Cases: Test Cases will be written to cover Test Requirements and will be shared with stakeholders.

4.	Test Scripts: 
	a.	Manual Test scripts  for new functionality and defects retests
	b.	Automated Test scripts in Ruby for end-to-end testing to be run after every build
	c.	Automated Test Scripts to be created with expected results. If actual results will be 	different from expected results, test case will be marked as failed.

5.	Test Environment
	a.	Operating Systems:
		i.	Windows
		ii.	Mac
		iii.	Mobile
	b.	Browsers: 
		i.	Internet Explorer
		ii.	Firefox
		iii.	Google Chrome
		iv.	Microsoft Edge
	c.	Server: Localhost - Test Environment

6.	Automated Testing Tool:
	a.	Recording: Selenium IDE with Ruby plugin. 
	b.	Playback:
		i.	Command Line
		ii.	Eclipse with configuration Ruby Test

7.	Entry & Exit Criteria:
	a.	Entry Criteria:
		i.	Application Development is complete
		ii.	Unit Tests are run and results are available
	b.	Exit Criteria:
		i.	All Priority 1 test cases are run successfully and passed
		ii.	80% of Priority 2 test cases are run successfully and passed
		iii.	No Catastrophic defect in open statuPe
		iv.	Functional defects are in development 
		v.	Cosmetic defects are under discussion

8.	Defects Handling:
	a.	Defects Management Tool: 
		i.	All defects will be reported in predefined excel template.
	b.	Defects will be categorized as:
		i.	Catastrophic: Environment related defects
		ii.	High priority Mathematical Calculations
		iii.	Medium Priority: Functionality related
		iv.	Cosmetic (Low priority)
	c.	Defects Triage:
		i.	Defects will be communicated via share drive
		ii.	Periodic meetings with Stakeholders to discuss reported defects
	d.	Defect Life Cycle: 
		i.	Defect Creation
		ii.	Defect Triage
		iii.	Defect Fix
		iv.	Manual Retest after Fix
		v.	Closing the defect or reopen

9.	Test Artifacts:
	a.	Test Plan
	b.	Test Cases
	c.	Test Scripts
	d.	Test Execution Status Reports
	e.	Defects reports
	f.	QA signoff Document 


