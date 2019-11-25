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

Then(/^Show All button should be (enabled|disabled)$/) do |status|
  puts("button is " + status)
end

When("I press on Clear button") do
  puts("clear button is pressed")
end

#Then("Show All button should be disabled") do
  #puts("button is disabled")
#end