# frozen_string_literal: true

require 'json'

treasure_hunt = JSON.parse(File.read("hunts/2020-liam.json"))

10.times { puts }
puts "========================================="
puts "Welcome to #{treasure_hunt['birthday_boy']}'s #{treasure_hunt['age']}th Birthday Party Treasure Hunt"
puts
puts "This first clue will get you on your way."
puts
puts "Expect surprises at every turn!"
puts
puts "LETS GOOOOOOOOOO!!!"
puts "========================================="
puts
puts "========================================="
puts "Type 'start' to begin!"
gets.chomp
puts "========================================="

clues = treasure_hunt["clues"]
count = 1
loop do
  10.times { puts }
  break if clues.empty?
  puts "========================================="
  puts "CLUE ##{count}"
  puts "========================================="
  next_clue = clues.shift
  puts "#{next_clue["clue"]}"
  code_answer = nil
  until code_answer == next_clue["code"]
    if clues.empty?
      puts "========================================="
      puts "TYPE THE WORD: DONE"
      puts "========================================="
      code_answer = gets.chomp.upcase
      break
    else
      puts "========================================="
      puts "Enter the CODE from last treasure"
      puts "========================================="
      code_answer = gets.chomp.upcase
    end
  end

  count += 1
  10.times { puts }
end
10.times { puts }
puts "GREAT JOB, END OF THE TREASURE HUNT!!!!!!!!!!!!!!"
5.times { puts }
puts "ENJOY YOUR B-DAY"
15.times { puts }
