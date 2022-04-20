#puts title
#puts "Unjumble this word correctly: amoexlctian"
#score = 0.to_i
#totalscore = 10.to_i
#scoreoutput = "Your score is #{score} out of #{totalscore}"
##choices = %w(Glasgow Edinburgh Bangkok Seoul Tokyo)
##answer = $prompt.select(greeting, choices)
#answer = gets.chomp 
#puts "\n\n"
#sleep(2)
    
puts "Unjumble this word correctly: amoexlctian"
guess = gets.chomp.to_s
answer = "exclamation"
until guess == answer do 
    puts "Wrong answer. Please try again"
    guess = gets.chomp.to_s
end 

if guess == answer 
    puts "Correct!"
else 
    puts "wrong answerrrrrrrr"
end 

sleep(2)
puts "your score is........"


#if answer != "exclamation"
#    puts "Unjumble" 
#    sleep(1)
#    answer = gets.chomp
#else puts "That's correct!"
#end 
#
#word_answer = exclamation
#answer = ""
#while word != word_answer 
