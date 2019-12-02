Before do
  puts "Before hook is executed"
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?

    if !File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end

    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    enbed("#{screenshot_file}","image/png")
  end
  sleep 3
  $driver.driver_quit
  puts "After hook is executed"
end