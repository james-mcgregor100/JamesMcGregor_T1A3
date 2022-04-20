class Quiz (introduction, question, answer, choices score)
    @introduction = introduction 
    @question = question
    @answer = answer 
    @choies = choices
end 



class Question << Quiz
    def initialize (history, geography, politics, random)
    @question: question
    @history: history
    @geography: geography
    @politics: politics 
    @random: random
end 

def wrong_answer
    puts "You've entered the wrong answer!"
end 

def correct_answer
    puts "Congratulations. That is the correct answer!"
end



