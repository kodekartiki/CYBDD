Feature: verify login functionality of OHRM
    Scenario: verify login functionality for valid user
      Given Navigate to OHRM url page
      When I enter user-name and pass-word
          | username | password |
          | Admin    | admin123 |
      And click on login button 
      Then validate for valid user page    
     