
require "tty-prompt"


history_quiz = ["What is capital of Thailand", "What is capital of Korea"]

def addtoscore
    score = []
    puts "Correct!"
    sleep(2)
    puts "+1 point has been added to your score"
    score << 1.to_i
    sleep(1)
end 


prompt = TTY::Prompt.new
answer = prompt.select("What quiz would you like to play? ", ["History", "Politics", "Geography"])
if "History"
    puts "Ok, we will begin the history quiz now"
    system 'clear'
puts history_quiz[0]
answer = gets.chomp 
    if answer == "Bangkok"
        addtoscore
        #puts "Correct!"
        #sleep (2)
        #puts "+1 point added to your score"
        #score << .to_i
        #sleep(1)
    else 
        puts "Wrong!"
    end 
else 
    puts "Ok, let's open the ?"
end 

print "Your total score so far is #{score.sum.to_i}"
puts "\n"


def addtoscore
    puts "Correct!"
    sleep(2)
    puts "+1 point has been added to your score"
    score << 1.to_i
end 




#def history_quiz
#    puts "Get ready to start the history quiz"
#    sleep (3)
#    system 'clear'
#    puts "What is Thailand's capital city"
#    answer = gets.chomp 
#    unless answer == "Bangkok" do 
#        puts "Wrong answer. Try again"
#        else
#        puts "Correct. Bangkok is the capital of Thailand"
#        end
#end 
#
#history_quiz

#class Games
#    attr_reader :question, :answer
#    def initialize (question, answer)
#        @question = question
#        @answer = answer
#    end 
#
#    def to_s
#    end
#end 
#
#
#class Player 
#    def initialize (name, score)
#    @name: name
#    @score: score 
#end 