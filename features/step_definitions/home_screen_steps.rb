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