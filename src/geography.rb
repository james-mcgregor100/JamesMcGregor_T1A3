require "tty-prompt"

def geographytrial
        totalscore = []
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question1 = 'Which of the following African countries IS located in the "Horn of Africa"?'
        choices = %w(Somalia Mali Nigeria Liberia)
        answer = $prompt.select(question1, choices, active_color: :red, help_color: :red)
    
    if answer == choices[0]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question2 = 'Damascus is the capital of which country?'
        choices = %w(Syria Lebanon Israel UAE)
        answer = $prompt.select(question2, choices, active_color: :red, help_color: :red)
    
    if answer == choices[0]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    end 
    
        system 'clear'
    
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question3 = 'Which of these countries in Southeast Asia IS landlocked (no ocean on its borders)?'
        choices = %w(Myanmar Cambodia Malaysia Laos)
        answer = $prompt.select(question3, choices, active_color: :red, help_color: :red)
    
    if answer == choices[3]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question4 = 'Which city has the largest population in the world?'
        choices = %w(Mumbai Tokyo Dehli China Shanghai)
        answer = $prompt.select(question4, choices, active_color: :red, help_color: :red)
    
    if answer == choices[1]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question5 = 'What is the capital of Pakistan?'
        choices = %w(Lahore Tehran Islamabad Peshawar)
        answer = $prompt.select(question5, choices, active_color: :red, help_color: :red)
    
    if answer == choices[2]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next quesiton"
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    end 
        
        system 'clear'
    
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question6 = 'Yosemite National Park is located in which state in the USA?'
        choices = %w(California Arizona Washington Oregon)
        answer = $prompt.select(question6, choices, active_color: :red, help_color: :red)
    
    if  answer == choices[0]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    end 

        system 'clear'
    
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question7 = 'What is the name of the deepest lake in the world?'
        choices = ["Crater Lake", "Caspian Sea", "Lake Vostok", "Lake Baikal"]
        answer = $prompt.select(question7, choices, active_color:   :red, help_color: :red)
    
    if  answer == choices[3]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
        puts "\nLoading next quesiton"
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
        puts "\nLoading next question"
        sleep(3)
    end 
        finishquiz
        puts "\n\n\n" + title + "\n\n\n"
        puts "Your total score is #{totalscore.sum} out of 7"
        sleep (5)
        system 'clear'
end 

def finishquiz
    system 'clear'
    puts "\n\n\n" + title + "\n\n\n"
    sleep(2)
    puts "You have finished the quiz."
    sleep (3)
    system 'clear'
    puts "\n\n\n" + title + "\n\n\n"
    puts "Please wait while we calculate your results"
    sleep(5)
    system 'clear'
end 