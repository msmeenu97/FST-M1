@SuiteCRM

Feature: Testing the SuiteCRM application

Background: User opens the URL
	Given User opens the Mozilla FireFox Browser
	When Open the SuiteCRM page and login with credentials provided "admin" and "pa$$w0rd"

@TestCaseOne
Scenario: Counting Dashlets
Scenario Outline: Open the homepage and count the number of the dashlets on the page
    Given Count the number of Dashlets on the homepage
    When Print the number and title of each Dashlet into the console
    Then Close the FireFox browser

@TestCaseTwo
Scenario: Create leads using parameterization
Scenario Outline: Open the Leads page and add multiple lead accounts using values passed from Feature file
    Given Navigate to Sales -> Leads -> Create Lead
    When Fill in the necessary details to create lead accounts using the values passed from the Feature file as "Mr." and "Jamila" and "Kaul" and "test7890@hotmail.com"
    Then Click Save to finish
    And Navigate to the View Leads page to see results as "MR." and "JAMILA" and "KAUL"
    And Close the FireFox browser

@TestCaseThree
Scenario: Schedule a meeting and invite members
Scenario Outline: To schedule a meeting and include at least 3 invitees
    Given Navigate to Activities -> Meetings -> Schedule a Meeting
    When Enter the details of the meeting
    Then Search for members and add them to the meeting with:
    |fName|
    |Kanti|
	|Jamila|
	|Test123|
    And Click On Save
    And Navigate to View Meetings page and confirm creation of the meeting
    And Close the FireFox browser

@TestCaseFour
Scenario: Creating a Product
Scenario Outline: To use an Examples table to add products  
	Given Navigate to All -> Products-> Create Product
    When Retrieve information about the product as "<productName>" and "<price>" and "<description>"
    Then Click On Product Save Button
    And Go to the View Products page to see all products listed as "<productName>"
    And Close the FireFox browser
    
Examples:
|productName|price|description|
|Python|10|Commonly used design language|
|Selenium|30|Commonly used automation testing tool|
|Jira|25|Commonly used defect management tool|
