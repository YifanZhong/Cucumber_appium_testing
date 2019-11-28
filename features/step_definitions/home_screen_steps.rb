# Then("Left Unit picker value should be Foot") do
  # puts("Left unit picker value is Foot")
# end

Then("Left Unit picker value should be {string}") do |value|
  actual_picker_text = find_elements(id:"select_unit_spinner")[0].text

  if actual_picker_text != value
    fail("Expected left unit picker value is #{value}, actual value is #{actual_picker_text}")
  end

end

# Then("Right Unit picker value should be Centimeter") do
  # puts("Right unit picker value is Centimeter")
# end

Then("Right Unit picker value should be {string}") do |value|
  array_of_elements = find_elements(id:"select_unit_spinner")
  actual_picker_text = array_of_elements[1].text

  if actual_picker_text != value
    fail("Expected right unit picker value is #{value}, actual value is #{actual_picker_text}")
  end
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  button_state = find_element(id:"btn_show_all").enabled?
  if state == "enabled"
    fail("Expected to be enabled") if button_state != true
  elsif state == "disabled"
    fail("Expected to be disabled") if button_state != false
  end
  #puts("button is " + state)
end

When("I press on Clear button") do
  puts("clear button is pressed")
end

#Then("Show All button should be disabled") do
  #puts("button is disabled")
#end

When(/^I type "([^"]*)" on application keyboard$/) do |target|
  digits = target.split("")
  digits.each do |num|
    find_element(id:"keypad").find_element(xpath:"//android.widget.Button[@text='#{num}']").click
  end
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  value = find_element(id:"target_value").text
  if value != result
    fail("Expected value is #{result}, actual value is #{value}")
  end
end


When(/^I press on Add to Favourites icon$/) do
  find_element(id:"action_add_favorites").click
end

Then(/^I press on Favourite Conversions$/) do
  text("Favorite conversions").click
end

And(/^I verify "([^"]*)" added to Favourite conversions list$/) do |unit_type|
  item_text = find_element(id:"favorites_item_hint").text
  if unit_type != item_text
    fail("Cannot find #{unit_type} in favourite List")
  end
end


Then(/^I press on search icon$/) do
  find_element(id:"action_bar").find_element(id:"action_search").click
  #find_element(id:"action_search").click
end

Then(/^I type "([^"]*)" in search field$/) do |text|
  find_element(id:"search_src_text").send_keys(text)
end

And(/^I press return button on soft keyboard$/) do
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count: 1).perform
end

Then(/^I see "([^"]*)" as a current unit converter$/) do |current_unit|
  find_element(id:"action_bar").find_element(xpath:"//android.widget.TextView[@text='#{current_unit}']")
end

Then(/^I select "([^"]*)" from left unit picker$/) do |value|
  find_elements(id:"select_unit_spinner")[0].click
  3.times { Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, end_x: 0.5, end_y:0.8, duration:600).perform }

  until exists { text(value) } do
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y:0.2, duration:600).perform
  end

  text(value).click
end