require "tty-prompt"
#require_relative "./main.rb"

def startupmenu
    title
    puts "                                      \n\nGood evening!!!\n\n".red
    sleep(4)
    system 'clear'
    puts title
    puts "                                 \n\nWelcome to Trivia Night.....\n\n".blue
    sleep(4)
    #sleep(3)
    system 'clear'
    puts title
    puts "                 WARNING: THIS APPLICATION IS ONLY FOR PEOPLE WHO ENJOY 
                    PLAYING TRIVIA, OR FOR PEOPLE WHO ENJOY TESTING 
                    THEIR KNOWLEDGE ON FUN AND INTERESTING TOPICS.".red
    sleep(9)
    system 'clear'
    puts title
    puts "\n\n"
    puts "              People who are not interested in this, may want to leave. So if 
                    you are one of those people, you a free to leave now.".blue
    sleep(3)
    puts "\n\n"

    prompt = TTY::Prompt.new
    answer = prompt.select("Would you like to play or leave? Select below: ") do |menu|
        menu.choice 'Play'
        menu.choice 'Exit'
    end 
    
    if answer == 'Play'
        sleep (2)
        puts "Great! Please wait while we load the trivia menu"
        sleep (2)
        system 'clear'

    end 
    testquiz 
end 


def testquiz
    puts title
    puts "Unjumble this word correctly: amoexlctian"
    score = 0.to_i
    totalscore = 10.to_i
    scoreoutput = "Your score is #{score} out of #{totalscore}"
    #choices = %w(Glasgow Edinburgh Bangkok Seoul Tokyo)
    #answer = $prompt.select(greeting, choices)
    answer = gets.chomp 
    puts "\n\n"
    sleep(2)
    
    until answer == "exclamation" do
        puts "Wrong answer. Try again."
        end 
    end 
    
    puts "Correct! - The word is 'exclamation'"
    sleep(3)
    score += 1
    puts scoreoutput
    #puts "\n\nYour score is #{score} out of #{totalscore}"
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
    puts "\n\nCorrect answer - 'Urdu' is spoken in Pakistan by approximately 61 million native speakers."
    score += 1
    sleep(2)
    puts scoreoutput
    #puts "Your score is #{score} out of #{totalscore}"

    startupmenu