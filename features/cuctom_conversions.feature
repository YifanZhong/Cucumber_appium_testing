@custom_conversions
Feature: User able to create and manage custom conversions

  @wip4
  Scenario: User able to create new conversion
    Given I land on home screen
    Then I press on menu icon
    Then I press on My conversions button
    Then I press on Create Your First Conversion button
    And I type "Power" as custom conversion name
    When I press on New Unit button
    Then I type "Horse Power" as unit name
    Then I type "HP" as unit symbol
    Then I type "1" as unit value
    Then I press submit checkmark on Custom conversions screen
    When I press on New Unit button
    Then I type "Mule Power" as unit name
    Then I type "MP" as unit symbol
    Then I type "0.5" as unit value
    Then I press submit checkmark on Custom conversions screen
    When I press on OK button on Custom conversions scren
    Then I verify "Power" added to Custom conversions List