class Question
    def initialize(question_name, answer_name)
        @question_name = question_name
        @answer_name = answer_name
    end 
    def to_s
        return "#{@question_name} #{@answer_name}"
    end
end 

q1.Question.new("What is the capital of Thailand?", "Bangkok")

puts q1


class Chefs
    def initialize(name, city, speciality)
    @name = name
    @city = city
    @specialty = specialty
    end 
end

    