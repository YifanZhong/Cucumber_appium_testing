Feature: Tests for Home screen functionality
  Scenario: Default values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left Unit picker value should be "Foot"
    Then Left Unit picker value should be "Inch"
    And Right Unit picker value should be "Centimeter"

  Scenario: Show All button enabled at launch
    Given I land on home screen
    Then Show All button should be enabled
    When I press on Clear button
    Then Show All button should be disabled


  Scenario: Verify default conversion
    Given I land on home screen
    When I type "1" to target text field
    Then I should see result as "12"


 Scenario Outline: Verify default conversion
    Given I land on home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"
   Examples:
     |target|result|
     |1     |12    |
     |2     |24    |
     |3     |36    |
