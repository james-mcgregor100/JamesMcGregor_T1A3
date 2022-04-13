
require 'answers.rb'


#def wrong_answer
#    puts "You've entered the wrong answer!"
#end 
#
#def correct_answer
#    puts "Congratulations. That is the correct answer!"
#end

puts "1. What is the capital of Thailand?"
puts "\n"
capital = gets.chomp 
puts "\n"
if capital == "Bangkok"
    correct_answer
else
    wrong_answer
end 
sleep (3)
puts "\n"
puts "2. What language beginning with 'U' do people in Pakistan speak?"
language = gets.chomp 

if language == "Urdu" || "urdu"
    correct_answer
else
    wrong_answer
end
puts "\n"
sleep (3)
puts "The test is now finished."
puts "\n\n\n"
sleep (3)
puts "Please wait while your results are calculated"
### insert progress bar here
puts "\n\n\n"
puts "Your total score is "