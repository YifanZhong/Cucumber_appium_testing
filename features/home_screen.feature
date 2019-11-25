Feature: Tests for Home screen functionality
  Scenario: Deafult values on Home screen is Foot and Centimeter
    Given I land on home screen
    Then Left Unit picker value should be "Foot"
    Then Left Unit picker value should be "Inch"

    And Right Unit picker value should be "Centimeter"
