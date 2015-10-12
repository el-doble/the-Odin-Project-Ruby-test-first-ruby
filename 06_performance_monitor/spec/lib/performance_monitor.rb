def measure(n = 1)
  time_taken = 0
  n.times do
    start_time = Time.now    
      yield
    end_time = Time.now
    time_taken += end_time - start_time
  end
  time_taken / n

end

puts measure {}
