@home_screen
Feature: Tests for Home screen functionality

  Background:
    Given I land on home screen

  @default
  Scenario: Default values on Home screen is Foot and Centimeter
    #Given I land on home screen
    Then Left Unit picker value should be "Foot"
    Then Left Unit picker value should be "Inch"
    And Right Unit picker value should be "Centimeter"

    @wip7
  Scenario: Show All button enabled at launch
    #Given I land on home screen
    Then Show All button should be disabled
    When I type "1" on application keyboard
    Then Show All button should be enabled

    @conversion
  Scenario Outline: Verify default conversion
    #Given I land on home screen
    When I type "<target>" on application keyboard
    Then I should see result as "<result>"
    Examples:
     |target|result|
     |1     |30.48    |
     |2     |60.96    |
     |3     |91.44    |
     |10    |304.8    |
     |1011  |30 815.28 |

      @wip3
  Scenario: User able to add current conversion to Favourites List
    #Given I land on home screen
    When I press on Add to Favourites icon
    When I press on menu icon
    Then I press on Favourite Conversions
    And I verify "Length" added to Favourite conversions list


        @wip6
  Scenario: User able to search by existing Conversion type
    #Given I land on home screen
    Then I press on search icon
    Then I type "Temperature" in search field
    And I press return button on soft keyboard
    Then I see "Temperature" as a current unit converter
    Then Left Unit picker value should be "Celsius"
    And Right Unit picker value should be "Fahrenheit"


  Scenario Outline: User able to select values from unit pickers
    #Given I land on home screen
    Then I select "<unit_type>" from left unit picker
    When I type "<amount>" on application keyboard
    Then I should see result as "<result>"
       Examples:
         |unit_type|amount |result  |
         |Inch     |1      |2.54    |
         |Link     |1      |20.1168 |



  Scenario: User able to convert values
    #Given I land on home screen
    When I press on menu icon
    Then I select "Volume" from menu
    Then I select "Cup" from right unit picker
    When I type "1" on application keyboard
    Then I should see result as "15.1416"
    @wip9
  Scenario: User able to switch values
    #Given I land on home screen
    Then Left Unit picker value should be "Foot"
    And Right Unit picker value should be "Centimeter"
    When I press on switch button
    Then Left Unit picker value should be "Centimeter"
    And Right Unit picker value should be "Foot"