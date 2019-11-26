Given("I land on home screen") do
  find_element(id: "action_search")
  find_element(id: "action_add_favorites")
end

When("I press on menu icon") do
  find_element(accessibility_id: "Open navigation drawer").click
end

Then("I should see left side menu") do
  text("Unit Converter")
end

When("I press on My conversions button") do
  puts("My conversions button pressed")
end

Then("I land on My conversions screen") do
  puts("Landed on my conversions screen")
end