@OrangeHRM

Feature: Testing the OrangeHRM application

Background: User opens the URL
	Given User opens the FF Browser
	When Open the OrangeHRM page and login with credentials provided "orange" and "orangepassword123"

@TestCaseOne
Scenario: Creating a job vacancy
Scenario Outline: To create a job vacancy for DevOps Engineer
    Given Navigate to the Recruitment page
    When Click on the Vacancies menu item to navigate to the vacancies page
    Then Click on the Add button to navigate to the Add Job Vacancy form
    And Fill out the necessary details
    And Click the Save button to save the vacancy
    And Verify that the vacancy was created
    And Close the Browser

@TestCaseTwo
Scenario:  Adding a candidate for recruitment
Scenario Outline: To Add information about a candidate for recruitment
    Given Navigate to the Recruitment page
    When Click on the Add button to add candidate information
    Then On the Add Candidate page fill in the details of the candidate
    And Upload a resume docx or pdf to the form
    And Click Save
    And Navigate back to the Recruitments page to confirm candidate entry
    And Close the Browser

@TestCaseThree
Scenario:  Add multiple employees
Scenario Outline: To Add multiple employees using an the Examples table
	Given Find the PIM option in the menu and click it
	When Click the Add button to add a new Employee
	Then Create Login Details checkbox is checked
	And Fill in the required fields using the data from the Examples table and click Save "<fName>" and "<lName>" and "<uName>" and "<password>"
	And Verify that the employees have been created with "<fName>" and "<lName>"
	And Close the Browser
	
Examples:
|fName|lName|uName|password|
|Dori|Booker|Dori_booker|Gmail@123|
|Babita|Kapoor|Babita_kapoor|Gmail@123|
|Tom|Cook|Tom_cook|Hmail@123|
    
@TestCaseFour
Scenario: Creating multiple vacancies
Scenario Outline: To Create multiple vacancies using data from an Examples table
    Given Navigate to the Recruitment page
    When Click on the Vacancies menu item to navigate to the vacancies page
    Then Click on the Add button to navigate to the Add Job Vacancy form
    And Fill out the necessary details from example table as "<jTitle>" and "<vacName>" and "<hiringManager>" and "<noPosition>" and "<description>"
    And Click the Save button to save the vacancy
    And Verify that the vacancy was created by "<jTitle>" and "<vacName>"
    And Close the Browser
    
Examples:
|jTitle|vacName|hiringManager|noPosition|description|
|Android Developer|PythonDeveloper|Tony Stark|10|Good knowledge of Python is required|
|Automation Test Engineer|SeleniumTester|Tony Stark|5|Good knowledge of Selenium and JAVA is required|
|DevOps Engineer|DevOpsTester|Tony Stark|1|Good knowledge of DevOps is required|

