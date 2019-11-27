# Then("Left Unit picker value should be Foot") do
  # puts("Left unit picker value is Foot")
# end

Then("Left Unit picker value should be {string}") do |string|
  puts(obj="Left unit picker value is "+string)

end

# Then("Right Unit picker value should be Centimeter") do
  # puts("Right unit picker value is Centimeter")
# end

Then("Right Unit picker value should be {string}") do |string|
  puts("Right unit picker value is " + string)
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