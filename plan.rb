STARTING_RATE = 2.4
MAX_RATE = 5.5
RATE_INCREMENT = 1.1 # 10%
STARTING_DURATION = 20 * 60 # 20 minutes
DURATION_INCREMENT = 5 * 60 # 5 minutes
CHANGE_RATE_DURATION = 60 * 60 # 45 minutes


current_rate       = STARTING_RATE
current_duration   = STARTING_DURATION
number_of_sessions = 0

while current_duration <= CHANGE_RATE_DURATION
  break if current_rate > MAX_RATE
  number_of_sessions += 1
  puts "#{current_rate}, #{current_duration / 60}"
  current_duration += DURATION_INCREMENT
  if current_duration > CHANGE_RATE_DURATION
    current_duration = STARTING_DURATION
    current_rate = (current_rate * RATE_INCREMENT).round(1)
#    puts "===== New Rate #{current_rate} ======"
  end
end
puts "Maximum of #{number_of_sessions} sessions, #{number_of_sessions / 3} weeks"
