#$prompt = TTY::Prompt.new
require_relative "./main.rb"
def testquiz
    puts title
    puts "Unjumble this word correctly: amoexlctian"
    score = 0.to_i
    totalscore = 10.to_i
    #choices = %w(Glasgow Edinburgh Bangkok Seoul Tokyo)
    #answer = $prompt.select(greeting, choices)
    answer = gets.chomp 
    puts "\n\n"
    sleep(2)
    until answer == "exclamation" do
        puts "Wrong answer. Try again."
    end 
    puts "correct answer - the word is exclamation"
    sleep(3)
    score += 1
    puts "Your score is #{score} out of #{totalscore}"
    sleep (4)
    system 'clear'
    puts title
    puts "What is the language beginning with 'U' that is spoken in Pakistan\n\n"
    #choices = %w(Glasgow Edinburgh Bangkok Seoul Tokyo)
    #answer = $prompt.select(greeting, choices)
    answer = gets.chomp 
    sleep (2)
    until answer == "Urdu" || "urdu" do
        puts "\n\nWrong answer. Try again."
    end 
    puts "\n\ncorrect answer - the word is Urdu"
    score += 1
    sleep(2)
    puts "Your score is #{score} out of #{totalscore}"
end

testquiz