Before do
  puts "Before hook is executed"
  $driver.start_driver
end

After do
  sleep 3
  $driver.driver_quit
  puts "After hook is executed"
end