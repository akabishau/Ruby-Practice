1.upto(10) do |i|
  if i == 5
    # exit # exits with status code 0 (success)
    # exit! #
    # abort("Exiting at 5") # raises an exception and exits the script
  end
  puts i
end

sleep 10 # sleep for 10 sec