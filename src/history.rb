require "tty-prompt"
require_relative "./main.rb"
require "tty-progressbar"

def historytrial
        totalscore = []
        histbook = []
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question1 = 'In what year was the European Union formed?'
        choices = %w(1917 1993 1945 1905)
        answer = $prompt.select(question1, choices, active_color: :cyan, help_color: :cyan)

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
        question2 = 'Mohammad Mosaddegh was the 35th Prime Minister of which country in the 1950s?'
        choices = %w(Turkey Iraq Israel Iran)
        answer = $prompt.select(question2, choices, active_color: :cyan, help_color: :cyan)

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
        question3 = 'In what city was the first ever publicly traded stock company established?'
        choices = %w(London New-York Paris Amsterdam)
        answer = $prompt.select(question3, choices, active_color: :cyan, help_color: :cyan)

    if answer == choices[3]
        sleep(3)
        totalscore <<1
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
        question4 = 'The conflict referred to as the "Opium Wars" occurred in what country?'
        choices = %w(Japan Afghanistan China Vietnam)
        answer = $prompt.select(question4, choices, active_color: :cyan, help_color: :cyan)

    if answer == choices[2]
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
        question5 = 'The Pelopennesian War was fought betwen Athens and which other Ancient Greek state?'
        choices = %w(Corinth Sparta Sumera Peloppon)
        answer = $prompt.select(question5, choices, active_color: :cyan, help_color: :cyan)
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
        puts "\nLoading net question"
        sleep(3)
    end 

        system 'clear'
        
        $prompt = TTY::Prompt.new
        puts "\n\n\n" + title + "\n\n\n"
        question6 = 'The ancient region of Mesopotamia is now located in which modern day country?'
        choices = %w(Libya Turkey Iraq Syria)
        answer = $prompt.select(question6, choices, active_color: :cyan, help_color: :cyan)

    if  answer == choices[2]
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
        question7 = 'Marcus Aurelius was the emporer of which empire?'
        choices = %w(Ottoman-Empire British-Empire Greek-Empire Roman-Empire)
        answer = $prompt.select(question7, choices, active_color: :cyan, help_color: :cyan)
    
    if  answer == choices[3]
        sleep(3)
        totalscore << 1
        puts "\nCorrect answer."
        sleep(3)
    else
        sleep(3)
        puts "\nWrong answer."
        sleep(3)
    end

        finishquiz
        puts "\n\n\n" + title + "\n\n\n"
        puts "Your total score is #{totalscore.sum} out of 7"
        sleep(5) 
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

def recommendhist
    
    $prompt = TTY::Prompt.new
    puts "\n\n\n" + title + "\n\n\n"
    puts "\n\n\n" + title + "\n\n\n"
    question7 = 'Marcus Aurelius was the emporer of which 
    empire?'
    choices = %w(Ottoman-Empire British-Empire Greek-Empire 
    Roman-Empire)
    answer = $prompt.select(question7, choices, active_color:
    :cyan, help_color: :cyan)
    
end 