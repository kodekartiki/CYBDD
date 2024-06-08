Feature:Login functionality of Orange HRM web site

  Background: Navigate to url
    Given I navigate to OHRM login webpage

    Scenario:TC1 I should be able to login OHRM web page eith valid username and password
       #Given I navigate to OHRM login webpage
       And I enter username and password
       When I click on login button
       Then valid user should be logged in

    Scenario:TC2 I should be able to login OHRM web page eith invalid username and password
       #Given I navigate to OHRM login webpage
       And I enter invalid username and password
       When I click on login button
       Then valid user should display Invalid credentials message

    Scenario:TC3 I should be able to login OHRM web page eith valid username and password
       #Given I navigate to OHRM login webpage 
       And  I enter username and password
       When I click on login button
       Then login page should display "Dashboard"
      
      
   

