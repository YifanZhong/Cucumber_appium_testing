# Then("Left Unit picker value should be Foot") do
  # puts("Left unit picker value is Foot")
# end

Then("Left Unit picker value should be {string}") do |value|
  actual_picker_text = find_element(id:"select_unit_spinner").text

  if actual_picker_text != value
    fail("Expected unit picker value is #{value}, actual value is #{actual_picker_text}")
  end

end

# Then("Right Unit picker value should be Centimeter") do
  # puts("Right unit picker value is Centimeter")
# end

Then("Right Unit picker value should be {string}") do |value|
  puts("Right unit picker value is " + value)
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  if state == "enabled"
    puts("button is enabled")
  elsif state == "disabled"
    puts("button is disabled")
  end
  #puts("button is " + state)
end

When("I press on Clear button") do
  puts("clear button is pressed")
end

#Then("Show All button should be disabled") do
  #puts("button is disabled")
#end

When(/^I type "([^"]*)" to target text field$/) do |target|
  puts("target is " + target)
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  puts("result is #{result}")
end


When(/^I press on Add to Favourites icon$/) do
  find_element(id:"action_add_favorites").click
end

Then(/^I press on Favourite Conversions$/) do
  text("Favorite conversions").click
end

And(/^I verify "([^"]*)" added to Favourite conversions list$/) do |unit_type|
  text(unit_type)
end


Then(/^I press on search icon$/) do
  find_element(id:"action_search").click
end

Then(/^I type "([^"]*)" in search field$/) do |text|
  find_element(id:"search_src_text").send_keys(text)
end

And(/^I press return button on soft keyboard$/) do
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count: 1).perform
end

Then(/^I see "([^"]*)" as a current unit converter$/) do |current_unit|
  text(current_unit)
end