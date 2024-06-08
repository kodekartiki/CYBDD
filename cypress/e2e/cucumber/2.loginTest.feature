Feature: verify login functionality of OHRM
    Scenario: verify login functionality for valid user
      Given Navigate to OHRM url page
      When I enter user-name and pass-word
          | username | password |
          | Admin    | admin123 |
      And click on login button 
      Then validate for valid user page    
     
     Scenario Outline: Verify login functionality OHRM
        Given Navigate to OHRM url page
        When I enter <username> and <password>
        And click on login button
        Then validate for valid user page

        Examples:
            | username | password |
            | Admin    | admin123 |
            | Admin    | admin123 |

    Scenario Outline: Verify login functionality OHRM
        Given Navigate to OHRM url page
        When I enter to <username1> and <password1>
        And click on login button
        Then validate to valid and invalid <credentials>

        Examples:
            | username1 | password1 | credentials |
            | Admin     | admin123  | valid       |
            | Abc       | abc123    | invalid     |


    Scenario Outline: Verify login functionality OHRM
        Given Navigate to OHRM url page
        When  I enter for "<username1>" and "<password1>"
        And  click on login button
        Then validate for value valid and invalid "<credentials>"

        Examples:
            | username1 | password1 | credentials |
            | Admin     | admin123  | valid       |
            | Abc       | abc123    | invalid     |