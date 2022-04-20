#array = ["hey", "bye", "hello", "yes", "no", "two", "ten", "twenty", "hundred", "thousand", "million"]
#
#puts array.length
#
#score = 5 
#
#puts "Your score is #{score} out of #{array.length}"


class Questions
    attr_accessor :question, :answer
    def initialize(question, answer)
         @question = question
         @answer = answer
    end
end

#p1 = "What color are apples?\n(a) Red/Green\n(b)Orange"
#p2 = "What color are bananas?\n(a) Red/Green\n(b)Yellow"
p1 = "What is the capital of Kenya?\n(a) Nairobi\n (b)Mombassa\n (c)Addis-Ababa"
#p2 = What is the language starting with 'U' that is spoken in Pakistan?
#p3 = In what year did Algeria gain independence from France? 
#p4 = In what year was the European Union formed? 
#p5 = In which Libyan city was the American diplomatic compound attacked in September 2012?
#p6 = Gamal Abdel Nasser was the leader of which African country?
#p7 = The 'New World' refers to which region in World History?
#p8 = The Khmer language is the national language of what country?
#p9 = Which country in mainland Southeast Asia was the only country to escape colonisation in the 20th
#century?
#p10 = The ancient region of Mesopotamia was located in what modern day country?
#p11 = What year was the United Nations established?

question = [
    Questions.new(p1, "a" "b" "c"),
    #Questions.new(p2, "b"),
    #Questions.new(p3, "a"),
    #Questions.new(p4, "b"),
    #Questions.new(p5, "a"),
    #Questions.new(p6, "b"),
    #Questions.new(p7, "a"),
    #Questions.new(p8, "b"),
    #Questions.new(p9, "a"),
    #Questions.new(p10, "b"),
    #Questions.new(p11, "a"),
]

def run_quiz(question)
    answer = ""
    score = 0
    for questions in question
         puts question.prompt
         answer = gets.chomp()
         if answer == question.answer
              score += 1
         end
    end
    puts "you got #{score} out of #{question.length()}"
end

run_quiz(question)
