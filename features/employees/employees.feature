Feature: Administer employees
  In order to maintain a list of employees to track and graph
  As a user
  I want to create, read, update, and delete employees

  Scenario: Add employee
    Given I am logged in
    When I follow "Employees"
      And I follow "Add employee"
    Then I should see "Add New Employee"

    When I fill in "First name" with "Scrooge"
      And I fill in "Last name" with "McDuck"
      And I fill in "Start date" with "03/01/2016"
      And I fill in "Starting salary annual amount" with "10000.00"
      And I fill in "Notes" with "New employee"
      And I press "Save"
    Then I see "Employee successfully created."

  Scenario: Update employee notes
    Given employee "Scrooge" exists
      And I am logged in
      And I follow "Employees"
      And I follow "Scrooge"
      And I press "Edit"
    When I fill in "Notes" with "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
      And I press "Save"
    Then I should see a pre tag
      And I should see "Notes"
      And I should see "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
